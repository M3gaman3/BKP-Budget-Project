local Translations = {
    error = {
        canceled = 'Peruutettu',
        bled_out = 'Olet vuotanut kuiviin...',
        impossible = 'Toiminto mahdoton...',
        no_player = 'Ei pelaajia lähettyvillä',
        no_firstaid = 'Tarvitset ensiapupakkauksen',
        no_bandage = 'Tarvitset sideharson',
        beds_taken = 'Kaikki sängyt ovat varattuja...',
        possessions_taken = 'Omaisuutesi on otettu talteen...',
        not_enough_money = 'Sinulla ei ole tarpeeksi rahaa mukana...',
        cant_help = 'Henkilöä ei voi enään auttaa...',
        not_ems = 'Et ole ensihoitaja',
        not_online = 'Pelaaja ei ole onlinessa'
    },
    success = {
        revived = 'Elvytit henkilön!',
        healthy_player = 'Henkilö on terve!"',
        helped_player = 'Autoit henkilöä!',
        wounds_healed = 'Haavasi on hoidettu!',
        being_helped = 'Sinua ollaan auttamassa...'
    },
    info = {
        civ_died = 'Siviili on kuollut',
        civ_down = 'Siviili on tajuton',
        civ_call = 'Siviilipuhelu',
        self_death = 'Itsemurha tai NPC-tappo',
        wep_unknown = 'Tuntematon',
        respawn_txt = 'Teholle pääsy: ~r~%{deathtime}~s~ sekuntia',
        respawn_revive = 'Pidä [~r~E~s~] pohjassa  %{holdtime} sekunnin ajan päästäksesi teholle hintaan $~r~%{cost}~s~',
        bleed_out = 'Vuodat kuiviin ~r~%{time}~s~ sekunnin kuluttua',
        bleed_out_help = 'Vuodat kuiviin ~r~%{time}~s~ sekunnin kuluttua, sinua voidaan vielä auttaa!',
        request_help = 'Paina [~r~G~s~] pyytääksesi apua!',
        help_requested = 'Ensihoitoa on ilmoitettu!',
        amb_plate = 'HUSL', -- Should only be 4 characters long due to the last 4 being a random 4 digits
        heli_plate = 'KOPU',  -- Should only be 4 characters long due to the last 4 being a random 4 digits
        status = 'Voinnin tarkastus',
        is_status = 'On %{status}',
        healthy = 'Olet taas täysin terve!',
        safe = 'Sairaalan varustekaappi',
        pb_hospital = 'Sairaala',
        pain_message = 'Sinun %{limb} tuntuu %{severity}',
        many_places = 'Tunnet kipua monessa paikassa..',
        bleed_alert = 'Vuodat %{bleedstate}',
        ems_alert = 'Ensihoidon hälytys %{text}',
        mr = 'Herra',
        mrs = 'Rouva.',
        dr_needed = 'Lääkäriä tarvitaan sairaalalla',
        ems_report = 'Ensihoidon ilmoitus',
        message_sent = 'Viesti lähetettäväksi',
        check_health = 'Tarkasta henkilön kunto',
        heal_player = 'Hoida henkilöä',
        revive_player = 'Elvytä henkilöä',
        revive_player_a = 'Elvytä itsesi tai pelaaja',
        player_id = 'Pelaajan ID(Nosta itsesi jättämällä tyhjäksi)',
        pain_level = 'Aseta sinun tai muun pelaajan kiputaso',
        kill = 'Tapa itsesi tai muu pelaaja',
        heal_player_a = 'Hoida itsesi tai muu pelaaja',
    },
    mail = {
        sender = 'Sairaala',
        subject = 'Hoidon lasku',
        message = 'Hyvä %{gender} %{lastname}, <br /><br /> Viimeisimmän sairaalakäynnin hoidon lasku on nyt annettu teille.<br /> Laskun summaksi tuli: <strong>%{costs}€</strong><br /><br />Toivomme Teille pikaista paranemista! <br /> Ystävällisin terveisin, <br /> Sairaalan henkilökunta '
    },
    states = {
        irritated = 'ärtynyt',
        quite_painful = 'hieman kipeä',
        painful = 'kipeä',
        really_painful = 'todella kipeä',
        little_bleed = 'hieman verta',
        bleed = 'verta',
        lot_bleed = 'paljon verta',
        big_bleed = 'todella paljon verta',
    },
    menu = {
        amb_vehicles = 'Ajoneuvot',
        close = '⬅ Sulje valikko',
    },
    text = {
        pstash_button = '~g~E~w~ - Henkilökohtainen kaappi',
        pstash = 'Henkilökohtainen kaappi',
        onduty_button = '~g~E~w~ - Astu vuoroon',
        offduty_button = '~r~E~w~ - Astu pois vuorosta',
        duty = 'Vuoroon/pois vuorosta',
        armory_button = '~g~E~w~ - Varasto',
        armory = 'Varasto',
        storeveh_button = '~g~E~w~ - Talleta ajoneuvo',
        veh_button = '~g~E~w~ - Ajoneuvot',
        storeheli_button = '~g~E~w~ - Talleta helikopteri',
        heli_button = '~g~E~w~ - Ota ulos helikopteri',
        elevator_roof = '~g~E~w~ - Ota hissi katolle',
        elevator_main = '~g~E~w~ - Ota hissi alas',
        bed_out = '~g~E~w~ - Nouse ylös sängystä..',
        call_doc = '~g~E~w~ - Kutsu paikalle henkilökunta',
        call = 'Kutsu',
        check_in = '~g~E~w~ - Mene hoitoon',
        check = 'Hoito',
        lie_bed = '~g~E~w~ - Makaa sängyssä'
    },
    body = {
        head = 'Pää',
        neck = 'Niska',
        spine = 'Selkäranka',
        upper_body = 'Yläkroppa',
        lower_body = 'Alakroppa',
        left_arm = 'Vasen käsivarsi',
        left_hand = 'Oikea käsi',
        left_fingers = 'Vasemmat sormet',
        left_leg = 'Vasen jalka',
        left_foot = 'Vasen jalkapöytä',
        right_arm = 'Oikea käsivarsi',
        right_hand = 'Oikea käsi',
        right_fingers = 'Oikeat sormet',
        right_leg = 'Oikea jalka',
        right_foot = 'Oikea jalkapöytä',
    },
    progress = {
        ifaks = 'Syödään lääkkeitä...',
        bandage = 'Käytetään sideharsoa...',
        painkillers = 'Syödään kipulääkkeitä...',
        revive = 'Elvytetään henkilöä...',
        healing = 'Hoidetaan haavoja...',
        checking_in = 'Pääset hoitoon...',
    },
    logs = {
        death_log_title = "%{playername} (%{playerid}) on kuollut",
        death_log_message = "%{killername} on tappanut %{playername} välineellä **%{weaponlabel}** (%{weaponname})",
    }
}

if GetConvar('qb_locale', 'en') == 'fi' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
