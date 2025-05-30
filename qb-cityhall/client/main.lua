local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local isLoggedIn = LocalPlayer.state.isLoggedIn
local playerPed = PlayerPedId()
local playerCoords = GetEntityCoords(playerPed)
local closestCityhall = nil
local closestDrivingSchool = nil
local inRangeCityhall = false
local inRangeDrivingSchool = false
local pedsSpawned = false
local blips = {}

-- Functions

local function getClosestHall()
    local distance = #(playerCoords - Config.Cityhalls[1].coords)
    local closest = 1
    for i = 1, #Config.Cityhalls do
        local hall = Config.Cityhalls[i]
        local dist = #(playerCoords - hall.coords)
        if dist < distance then
            distance = dist
            closest = i
        end
    end
    return closest
end

local function getClosestSchool()
    local distance = #(playerCoords - Config.DrivingSchools[1].coords)
    local closest = 1
    for i = 1, #Config.DrivingSchools do
        local school = Config.DrivingSchools[i]
        local dist = #(playerCoords - school.coords)
        if dist < distance then
            distance = dist
            closest = i
        end
    end
    return closest
end

local function createBlip(options)
    if not options.coords or type(options.coords) ~= 'table' and type(options.coords) ~= 'vector3' then return error(('createBlip() expected coords in a vector3 or table but received %s'):format(options.coords)) end
    local blip = AddBlipForCoord(options.coords.x, options.coords.y, options.coords.z)
    SetBlipSprite(blip, options.sprite or 1)
    SetBlipDisplay(blip, options.display or 4)
    SetBlipScale(blip, options.scale or 1.0)
    SetBlipColour(blip, options.colour or 1)
    SetBlipAsShortRange(blip, options.shortRange or false)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(options.title or 'No Title Given')
    EndTextCommandSetBlipName(blip)
    return blip
end

local function deleteBlips()
    if not next(blips) then return end
    for i = 1, #blips do
        local blip = blips[i]
        if DoesBlipExist(blip) then
            RemoveBlip(blip)
        end
    end
    blips = {}
end

local function initBlips()
    for i = 1, #Config.Cityhalls do
        local hall = Config.Cityhalls[i]
        if hall.showBlip then
            blips[#blips + 1] = createBlip({
                coords = hall.coords,
                sprite = hall.blipData.sprite,
                display = hall.blipData.display,
                scale = hall.blipData.scale,
                colour = hall.blipData.colour,
                shortRange = true,
                title = hall.blipData.title
            })
        end
    end
    for i = 1, #Config.DrivingSchools do
        local school = Config.DrivingSchools[i]
        if school.showBlip then
            blips[#blips + 1] = createBlip({
                coords = school.coords,
                sprite = school.blipData.sprite,
                display = school.blipData.display,
                scale = school.blipData.scale,
                colour = school.blipData.colour,
                shortRange = true,
                title = school.blipData.title
            })
        end
    end
end

local function openCityhallMenu()
    local mainMenu = {
        {
            header = 'City Hall',
            isMenuHeader = true
        },
        {
            header = 'ID Card',
            txt = 'Get your ID Card',
            params = {
                event = 'qb-cityhall:client:openIdentityMenu'
            }
        },
        {
            header = 'Job Center',
            txt = 'Available Jobs',
            params = {
                event = 'qb-cityhall:client:openJobMenu'
            }
        },
        {
            header = 'Close Menu',
            txt = '',
            params = {
                event = 'qb-menu:client:closeMenu'
            }
        }
    }

    exports['qb-menu']:openMenu(mainMenu)
end

local function openIdentityMenu()
    QBCore.Functions.TriggerCallback('qb-cityhall:server:getIdentityData', function(licenses)
        local identityMenu = {
            {
                header = 'Identity',
                isMenuHeader = true
            },
            {
                header = '← Go Back',
                params = {
                    event = 'qb-cityhall:client:openCityhallMenu'
                }
            }
        }

        for license, data in pairs(licenses) do
            table.insert(identityMenu, {
                header = data.label,
                txt = 'Cost: $' .. data.cost,
                params = {
                    event = 'qb-cityhall:client:requestId',
                    args = {
                        type = license,
                        cost = data.cost
                    }
                }
            })
        end

        exports['qb-menu']:openMenu(identityMenu)
    end, closestCityhall)
end

local function openJobMenu()
    QBCore.Functions.TriggerCallback('qb-cityhall:server:receiveJobs', function(jobs)
        local jobMenu = {
            {
                header = 'Job Center',
                isMenuHeader = true
            },
            {
                header = '← Go Back',
                params = {
                    event = 'qb-cityhall:client:openCityhallMenu'
                }
            }
        }

        for jobName, jobData in pairs(jobs) do
            table.insert(jobMenu, {
                header = jobData.label,
                txt = 'Apply for this job',
                params = {
                    event = 'qb-cityhall:client:applyJob',
                    args = {
                        job = jobName
                    }
                }
            })
        end

        exports['qb-menu']:openMenu(jobMenu)
    end)
end

local function spawnPeds()
    if not Config.Peds or not next(Config.Peds) or pedsSpawned then return end
    for i = 1, #Config.Peds do
        local current = Config.Peds[i]
        current.model = type(current.model) == 'string' and joaat(current.model) or current.model
        RequestModel(current.model)
        while not HasModelLoaded(current.model) do
            Wait(0)
        end
        local ped = CreatePed(0, current.model, current.coords.x, current.coords.y, current.coords.z, current.coords.w, false, false)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskStartScenarioInPlace(ped, current.scenario, true, true)
        current.pedHandle = ped
        if Config.UseTarget then
            local opts = nil
            if current.drivingschool then
                opts = {
                    label = 'Take Driving Lessons',
                    icon = 'fa-solid fa-car-side',
                    action = function()
                        TriggerServerEvent('qb-cityhall:server:sendDriverTest', Config.DrivingSchools[closestDrivingSchool].instructors)
                    end
                }
            elseif current.cityhall then
                opts = {
                    label = 'Open Cityhall',
                    icon = 'fa-solid fa-city',
                    action = function()
                        inRangeCityhall = true
                        openCityhallMenu()
                    end
                }
            end
            if opts then
                exports['qb-target']:AddTargetEntity(ped, {
                    options = { opts },
                    distance = 2.0
                })
            end
        else
            local options = current.zoneOptions
            if options then
                local zone = BoxZone:Create(current.coords.xyz, options.length, options.width, {
                    name = 'zone_cityhall_' .. ped,
                    heading = current.coords.w,
                    debugPoly = false,
                    minZ = current.coords.z - 3.0,
                    maxZ = current.coords.z + 2.0
                })
                zone:onPlayerInOut(function(inside)
                    if isLoggedIn and closestCityhall and closestDrivingSchool then
                        if inside then
                            if current.drivingschool then
                                inRangeDrivingSchool = true
                                exports['qb-core']:DrawText('[E] Take Driving Lessons')
                            elseif current.cityhall then
                                inRangeCityhall = true
                                exports['qb-core']:DrawText('[E] Open Cityhall')
                            end
                        else
                            exports['qb-core']:HideText()
                            if current.drivingschool then
                                inRangeDrivingSchool = false
                            elseif current.cityhall then
                                inRangeCityhall = false
                            end
                        end
                    end
                end)
            end
        end
    end
    pedsSpawned = true
end

local function deletePeds()
    if not Config.Peds or not next(Config.Peds) or not pedsSpawned then return end
    for i = 1, #Config.Peds do
        local current = Config.Peds[i]
        if current.pedHandle then
            DeletePed(current.pedHandle)
        end
    end
    pedsSpawned = false
end

-- Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    isLoggedIn = true
    spawnPeds()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
    isLoggedIn = false
    deletePeds()
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

RegisterNetEvent('qb-cityhall:client:openCityhallMenu', function()
    openCityhallMenu()
end)

RegisterNetEvent('qb-cityhall:client:openIdentityMenu', function()
    openIdentityMenu()
end)

RegisterNetEvent('qb-cityhall:client:openJobMenu', function()
    openJobMenu()
end)

RegisterNetEvent('qb-cityhall:client:getIds', function()
    TriggerServerEvent('qb-cityhall:server:getIDs')
end)

RegisterNetEvent('qb-cityhall:client:requestId', function(data)
    if inRangeCityhall then
        local license = Config.Cityhalls[closestCityhall].licenses[data.type]
        if license and data.cost == license.cost then
            TriggerServerEvent('qb-cityhall:server:requestId', data.type, closestCityhall)
            QBCore.Functions.Notify(('You have received your %s for $%s'):format(license.label, data.cost), 'success', 3500)
        else
            QBCore.Functions.Notify(Lang:t('error.not_in_range'), 'error')
        end
    else
        QBCore.Functions.Notify(Lang:t('error.not_in_range'), 'error')
    end
end)

RegisterNetEvent('qb-cityhall:client:applyJob', function(data)
    if inRangeCityhall then
        TriggerServerEvent('qb-cityhall:server:ApplyJob', data.job, Config.Cityhalls[closestCityhall].coords)
    else
        QBCore.Functions.Notify(Lang:t('error.not_in_range'), 'error')
    end
end)

RegisterNetEvent('qb-cityhall:client:sendDriverEmail', function(charinfo)
    SetTimeout(math.random(2500, 4000), function()
        local gender = Lang:t('email.mr')
        if PlayerData.charinfo.gender == 1 then
            gender = Lang:t('email.mrs')
        end
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Lang:t('email.sender'),
            subject = Lang:t('email.subject'),
            message = Lang:t('email.message', { gender = gender, lastname = charinfo.lastname, firstname = charinfo.firstname, phone = charinfo.phone }),
            button = {}
        })
    end)
end)

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    deleteBlips()
    deletePeds()
end)

-- Threads

CreateThread(function()
    while true do
        if isLoggedIn then
            playerPed = PlayerPedId()
            playerCoords = GetEntityCoords(playerPed)
            closestCityhall = getClosestHall()
            closestDrivingSchool = getClosestSchool()
        end
        Wait(1000)
    end
end)

CreateThread(function()
    initBlips()
    spawnPeds()
    if not Config.UseTarget then
        while true do
            local sleep = 1000
            if isLoggedIn and closestCityhall and closestDrivingSchool then
                if inRangeCityhall then
                    sleep = 0
                    if IsControlJustPressed(0, 38) then
                        openCityhallMenu()
                        exports['qb-core']:KeyPressed()
                        Wait(500)
                        exports['qb-core']:HideText()
                        sleep = 1000
                    end
                elseif inRangeDrivingSchool then
                    sleep = 0
                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent('qb-cityhall:server:sendDriverTest', Config.DrivingSchools[closestDrivingSchool].instructors)
                        sleep = 5000
                        exports['qb-core']:KeyPressed()
                        Wait(500)
                        exports['qb-core']:HideText()
                    end
                end
            end
            Wait(sleep)
        end
    end
end)
