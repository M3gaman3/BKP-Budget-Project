local Translations = {
    error = {
        canceled = 'Abgebrochen',
        bled_out = 'Du bist ausgeblutet...',
        impossible = 'Aktion kann nicht ausgeführt werden...',
        no_player = 'Kein Spieler in der Nähe',
        no_firstaid = 'Du benötigst ein Erste-Hilfe-Kasten',
        no_bandage = 'Du benötigst einen Verband',
        beds_taken = 'Die Betten sind belegt...',
        possessions_taken = 'Dir wurde alles abgenommen...',
        not_enough_money = 'Du hast nicht genügend Geld bei dir...',
        cant_help = 'Du kannst dieser Person nicht helfen...',
        not_ems = 'Du bist kein Rettungsdienst',
        not_online = 'Spieler nicht online'
    },
    success = {
        revived = 'Du hast eine Person wiederbelebt',
        healthy_player = 'Spieler ist gesund',
        helped_player = 'Du hast der Person geholfen',
        wounds_healed = 'Deine Wunden wurden geheilt!',
        being_helped = 'Dir wurde geholfen...'
    },
    info = {
        civ_died = 'Zivilist verstorben',
        civ_down = 'Zivilist am Boden',
        civ_call = 'Zivilisten Anruf',
        self_death = 'Er selbst oder ein NPC',
        wep_unknown = 'Unbekannt',
        respawn_txt = 'Wiederbelebung in: ~r~%{deathtime}~s~ Sekunden',
        respawn_revive = 'Halte [~r~E~s~] für %{holdtime} Sekunden um Wiederbelebt zu werden zu Preis von $~r~%{cost}~s~',
        bleed_out = 'Du blutest aus in: ~r~%{time}~s~ Sekunden',
        bleed_out_help = 'Du blutest aus in: ~r~%{time}~s~ Sekunden, dir kann geholfen werden',
        request_help = 'Drücke [~r~G~s~] für eine hilfeanfrage',
        help_requested = 'Rettungsdienst wurde verständigt',
        amb_plate = 'AMBU',  -- Sollte nur 4 Zeichen lang sein, da die letzten 4 Zufallszahlen sind
        heli_plate = 'LIFE', -- Sollte nur 4 Zeichen lang sein, da die letzten 4 Zufallszahlen sind
        status = 'Status Prüfung',
        is_status = 'Ist %{status}',
        healthy = 'Du bist wieder ganz gesund!',
        safe = 'Krankenhaus Safe',
        pb_hospital = 'Pillbox Krankenhaus',
        paleto_hospital = 'Paleto Krankenhaus',
        pain_message = 'Dein %{limb} fühlt sich %{severity} an',
        many_places = 'Du hast Schmerzen an verschiedenen Stellen...',
        bleed_alert = 'Du blutest %{bleedstate}',
        ems_alert = 'Rettungsdienst Alarm - %{text}',
        mr = 'Herr.',
        mrs = 'Frau.',
        dr_needed = 'Ein Arzt wird in %{hospital} benötigt',
        ems_report = 'Rettungsdienst Report',
        message_sent = 'Nachricht zu senden',
        check_health = 'Überprüfe die Gesundheit eines Spielers',
        heal_player = 'Heile einen Spieler',
        revive_player = 'Belebe einen Spieler wieder',
        revive_player_a = 'Belebe einen Spieler oder dich selbst (Nur Admin)',
        player_id = 'Spieler-ID (kann leer sein)',
        pain_level = 'Setze dein oder eines Spielers Schmerzlevel (Nur Admin)',
        kill = 'Töte einen Spieler oder dich selbst (Nur Admin)',
        heal_player_a = 'Heile einen Spieler oder dich selbst (Nur Admin)',
    },
    mail = {
        subject = 'Krankenhauskosten',
        message = 'Sehr geehrte/r %{gender} %{lastname}, <br /><br />Hiermit erhalten Sie eine E-Mail mit den Kosten des letzten Krankenhausbesuchs.<br />Die endgültigen Kosten betragen: <strong>$%{costs}</strong><br /><br />Wir wünschen Ihnen eine schnelle Genesung!'
    },
    states = {
        irritated = 'irritiert',
        quite_painful = 'leicht schmerzhaft',
        painful = 'schmerzhaft',
        really_painful = 'sehr schmerzhaft',
        little_bleed = 'wenig blutend...',
        bleed = 'blutend...',
        lot_bleed = 'etwas mehr blutend...',
        big_bleed = 'sehr stark blutend...',
    },
    menu = {
        amb_vehicles = 'Rettungsdienst Fahrzeuge',
        status = 'Gesundheitsstatus',
        close = '⬅ Menü schließen',
    },
    text = {
        pstash_button = '[E] - Persönliches Fach',
        pstash = 'Persönliches Fach',
        onduty_button = '[E] - Dienst antreten',
        offduty_button = '[E] - Dienst quittieren',
        duty = 'Im Dienst / Außer Dienst',
        armory_button = '[E] - Waffenschrank',
        armory = 'Waffenschrank',
        veh_button = '[E] - Fahrzeug holen / abstellen',
        heli_button = '[E] - Hubschrauber holen / abstellen',
        elevator_roof = '[E] - Aufzug zum Dach nehmen',
        elevator_main = '[E] - Aufzug nach unten nehmen',
        bed_out = '[E] - Um aus dem Bett zu steigen..',
        call_doc = '[E] - Arzt rufen',
        call = 'Anrufen',
        check_in = '[E] Einchecken',
        check = 'Einchecken',
        lie_bed = '[E] - Um ins Bett zu legen'
    },
    body = {
        head = 'Kopf',
        neck = 'Nacken',
        spine = 'Wirbelsäule',
        upper_body = 'Oberer Körper',
        lower_body = 'Unterer Körper',
        left_arm = 'Linker Arm',
        left_hand = 'Linke Hand',
        left_fingers = 'Linke Finger',
        left_leg = 'Linkes Bein',
        left_foot = 'Linker Fuß',
        right_arm = 'Rechter Arm',
        right_hand = 'Rechte Hand',
        right_fingers = 'Rechte Finger',
        right_leg = 'Rechtes Bein',
        right_foot = 'Rechter Fuß',
    },
    progress = {
        ifaks = 'Benutze Erste-Hilfe-Kasten...',
        bandage = 'Benutze Verband...',
        painkillers = 'Nehme Schmerzmittel...',
        revive = 'Wiederbelebe Person...',
        healing = 'Wunden heilen...',
        checking_in = 'Checke ein...',
    },
    logs = {
        death_log_title = '%{playername} (%{playerid}) is gestorben',
        death_log_message = '%{killername} tötete %{playername} mit einer/einem **%{weaponlabel}** (%{weaponname})',
    }
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
