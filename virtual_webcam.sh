#!/bin/bash
# Déterminer la langue à partir de LANG
case "$LANG" in
    *"fr_FR"*) lang="fr" ;;
    *"en_US"*) lang="en" ;;
    *"es_ES"*) lang="es" ;;
    *"de_DE"*) lang="de" ;;
    *"it_IT"*) lang="it" ;;
    *"pt_PT"*) lang="pt" ;;
    *"nl_NL"*) lang="nl" ;;
    *"sv_SE"*) lang="sv" ;;
    *"da_DK"*) lang="da" ;;
    *"fi_FI"*) lang="fi" ;;
    *"el_GR"*) lang="el" ;;
    *"cs_CZ"*) lang="cs" ;;
    *"hu_HU"*) lang="hu" ;;
    *"pl_PL"*) lang="pl" ;;
    *"sk_SK"*) lang="sk" ;;
    *"sl_SI"*) lang="sl" ;;
    *"et_EE"*) lang="et" ;;
    *"lv_LV"*) lang="lv" ;;
    *"lt_LT"*) lang="lt" ;;
    *"ro_RO"*) lang="ro" ;;
    *"bg_BG"*) lang="bg" ;;
    *"hr_HR"*) lang="hr" ;;
    *"cy_GB"*) lang="cy" ;;
    *"ga_IE"*) lang="ga" ;;
    *"uk_UK"*) lang="uk" ;;
    *) lang="en" ;;  # Par défaut, utiliser l'anglais
esac

# Définir les variables de messages en fonction de la langue
case "$lang" in
    "fr")
        instructions="Veuillez lancer sur votre smartphone Android l'application RemoteCam.\nAssurez-vous que le mode stream est activé avant de continuer."
        ip_prompt="Veuillez saisir l'adresse IP de votre smartphone\nsur lequel tourne le serveur mjpeg :"
        info_ip="Adresse IP de votre smartphone sur lequel tourne le serveur MJPEG :"
        module_loading="Déchargement / chargement du module v4l2loopback"
        password_prompt="Veuillez entrer votre mot de passe utilisateur pour continuer :"
        success_password="Mot de passe saisi avec succès."
        cancel_password="Annulation de la saisie du mot de passe. Le script ne sera pas exécuté."
        cancel_ip="Annulation de la saisie de l'adresse IP. Le script ne sera pas exécuté."
        ffmpeg_execution="Exécution de ffmpeg avec l'adresse IP saisie."
        ;;
    "en")
        instructions="Please launch the RemoteCam application on your Android smartphone.\nMake sure that the stream mode is activated before continuing."
        ip_prompt="Please enter the IP address of your smartphone \nrunning the mjpeg server:"
        info_ip="MJPEG server IP address:"
        module_loading="Unloading / loading the v4l2loopback module"
        password_prompt="Please enter your user password to continue:"
        success_password="Password entered successfully."
        cancel_password="Cancellation of password entry. The script will not be executed."
        cancel_ip="Cancellation of IP address entry. The script will not be executed."
        ffmpeg_execution="Executing ffmpeg with the entered IP address."
        ;;
    "es")
        instructions="Por favor, inicie la aplicación RemoteCam en su smartphone Android.\nAsegúrese de que el modo de transmisión esté activado antes de continuar."
        ip_prompt="Por favor, introduzca la dirección IP de su smartphone \nque ejecuta el servidor mjpeg:"
        info_ip="Dirección IP del servidor MJPEG:"
        module_loading="Descargando / cargando el módulo v4l2loopback"
        password_prompt="Por favor, introduzca su contraseña de usuario para continuar:"
        success_password="Contraseña introducida con éxito."
        cancel_password="Cancelación de la entrada de contraseña. El script no se ejecutará."
        cancel_ip="Cancelación de la entrada de la dirección IP. El script no se ejecutará."
        ffmpeg_execution="Ejecutando ffmpeg con la dirección IP introducida."
        ;;
    "de")
        instructions="Bitte starten Sie die RemoteCam-Anwendung auf Ihrem Android-Smartphone.\nStellen Sie sicher, dass der Stream-Modus aktiviert ist, bevor Sie fortfahren."
        ip_prompt="Bitte geben Sie die IP-Adresse Ihres Smartphones ein, \ndas den mjpeg-Server ausführt:"
        info_ip="IP-Adresse des mjpeg-Servers:"
        module_loading="Entladen / Laden des v4l2loopback-Moduls"
        password_prompt="Bitte geben Sie Ihr Benutzerpasswort ein, um fortzufahren:"
        success_password="Passwort erfolgreich eingegeben."
        cancel_password="Abbruch der Passworteingabe. Das Skript wird nicht ausgeführt."
        cancel_ip="Abbruch der IP-Adresseneingabe. Das Skript wird nicht ausgeführt."
        ffmpeg_execution="Ausführen von ffmpeg mit der eingegebenen IP-Adresse."
        ;;
    "it")
	instructions="Si prega di avviare l'applicazione RemoteCam sul tuo smartphone Android.\nAssicurati che la modalità di streaming sia attivata prima di continuare."
        ip_prompt="Inserisci l'indirizzo IP del tuo smartphone \nche esegue il server mjpeg:"
        info_ip="Indirizzo IP del server MJPEG:"
        module_loading="Scaricamento / caricamento del modulo v4l2loopback"
        password_prompt="Inserisci la tua password utente per continuare:"
        success_password="Password inserita con successo."
        cancel_password="Annullamento dell'inserimento della password. Lo script non verrà eseguito."
        cancel_ip="Annullamento dell'inserimento dell'indirizzo IP. Lo script non verrà eseguito."
        ffmpeg_execution="Esecuzione di ffmpeg con l'indirizzo IP inserito."
        ;;
    "pt")
        instructions="Por favor, inicie o aplicativo RemoteCam no seu smartphone Android.\nCertifique-se de que o modo de transmissão esteja ativado antes de continuar."
        ip_prompt="Por favor, insira o endereço IP do seu smartphone \nque executa o servidor mjpeg:"
        info_ip="Endereço IP do servidor MJPEG:"
        module_loading="Descarregando / carregando o módulo v4l2loopback"
        password_prompt="Por favor, insira sua senha de usuário para continuar:"
        success_password="Senha inserida com sucesso."
        cancel_password="Cancelamento da entrada da senha. O script não será executado."
        cancel_ip="Cancelamento da entrada do endereço IP. O script não será executado."
        ffmpeg_execution="Executando o ffmpeg com o endereço IP inserido."
        ;;
    "nl")
        instructions="Start alsjeblieft de RemoteCam-app op je Android-smartphone.\nZorg ervoor dat de streammodus is geactiveerd voordat je verdergaat."
        ip_prompt="Voer het IP-adres in van je smartphone \ndie de mjpeg-server uitvoert:"
        info_ip="IP-adres van de MJPEG-server:"
        module_loading="Lossen / laden van het v4l2loopback-module"
        password_prompt="Voer je gebruikerswachtwoord in om door te gaan:"
        success_password="Wachtwoord succesvol ingevoerd."
        cancel_password="Annulering van het invoeren van het wachtwoord. Het script wordt niet uitgevoerd."
        cancel_ip="Annulering van het invoeren van het IP-adres. Het script wordt niet uitgevoerd."
        ffmpeg_execution="Uitvoeren van ffmpeg met het ingevoerde IP-adres."
        ;;
    "sv")
	instructions="Vänligen starta RemoteCam-applikationen på din Android-smartphone.\nSe till att streamläget är aktiverat innan du fortsätter."
	ip_prompt="Ange IP-adressen för din smartphone \nsom kör mjpeg-servern:"
	info_ip="IP-adress för MJPEG-server:"
	module_loading="Urladdning / laddning av v4l2loopback-modulen"
	password_prompt="Ange ditt användarlösenord för att fortsätta:"
	success_password="Lösenordet har angetts framgångsrikt."
	cancel_password="Avbokning av lösenordsinmatning. Skriptet kommer inte att köras."
	cancel_ip="Avbokning av IP-adressinmatning. Skriptet kommer inte att köras."
	ffmpeg_execution="Utför ffmpeg med den angivna IP-adressen."
	;;
    "da")
	instructions="Start venligst RemoteCam-applikationen på din Android-smartphone.\nSørg for, at streamingtilstand er aktiveret, før du fortsætter."
	ip_prompt="Indtast venligst IP-adressen på din smartphone \nder kører mjpeg-serveren:"
	info_ip="IP-adresse for MJPEG-server:"
	module_loading="Aflæsning / indlæsning af v4l2loopback-modulet"
	password_prompt="Indtast venligst dit brugeradgangskode for at fortsætte:"
	success_password="Adgangskoden blev indtastet med succes."
	cancel_password="Annullering af adgangskodeindtastning. Scriptet vil ikke blive udført."
	cancel_ip="Annullering af IP-adresseindtastning. Scriptet vil ikke blive udført."
	ffmpeg_execution="Udfører ffmpeg med den indtastede IP-adresse."
	;;
    "fi")
	instructions="Käynnistä RemoteCam-sovellus Android-älypuhelimessasi.\nVarmista, että stream-tila on aktivoitu ennen jatkamista."
	ip_prompt="Anna älypuhelimesi IP-osoite \njoka suorittaa mjpeg-palvelimen:"
	info_ip="MJPEG-palvelimen IP-osoite:"
	module_loading="V4l2loopback-moduulin purku/lataus"
	password_prompt="Anna käyttäjäsalasanasi jatkaaksesi:"
	success_password="Salasana syötetty onnistuneesti."
	cancel_password="Salasanan syöttö peruttu. Skriptiä ei suoriteta."
	cancel_ip="IP-osoitteen syöttö peruttu. Skriptiä ei suoriteta."
	ffmpeg_execution="Suoritetaan ffmpeg annetulla IP-osoitteella."
	;;
    "el")
	instructions="Παρακαλώ εκκινήστε την εφαρμογή RemoteCam στο Android smartphone σας.\nΒεβαιωθείτε ότι η λειτουργία ροής είναι ενεργοποιημένη πριν συνεχίσετε."
	ip_prompt="Παρακαλώ εισαγάγετε τη διεύθυνση IP του smartphone \nπου εκτελεί τον διακομιστή mjpeg:"
	info_ip="Διεύθυνση IP του διακομιστή MJPEG:"
	module_loading="Ξεφόρτωση / φόρτωση της ενότητας v4l2loopback"
	password_prompt="Παρακαλώ εισαγάγετε τον κωδικό πρόσβασής σας για να συνεχίσετε:"
	success_password="Επιτυχής εισαγωγή κωδικού πρόσβασης."
	cancel_password="Ακύρωση εισαγωγής κωδικού πρόσβασης. Το σενάριο δεν θα εκτελεστεί."
	cancel_ip="Ακύρωση εισαγωγής διεύθυνσης IP. Το σενάριο δεν θα εκτελεστεί."
	ffmpeg_execution="Εκτέλεση του ffmpeg με την εισαγμένη διεύθυνση IP."
	;;
    "cs")
	instructions="Prosím, spusťte aplikaci RemoteCam na svém zařízení Android.\nUjistěte se, že je aktivován režim streamování před pokračováním."
	ip_prompt="Prosím, zadejte IP adresu svého zařízení \nkteré provozuje server mjpeg:"
	info_ip="IP adresa serveru MJPEG:"
	module_loading="Vykládání / načítání modulu v4l2loopback"
	password_prompt="Prosím, zadejte své uživatelské heslo pro pokračování:"
	success_password="Heslo úspěšně zadané."
	cancel_password="Zrušení zadávání hesla. Skript nebude proveden."
	cancel_ip="Zrušení zadávání IP adresy. Skript nebude proveden."
	ffmpeg_execution="Spouští se ffmpeg s zadanou IP adresou."
        ;;
    "pl")
	instructions="Proszę uruchomić aplikację RemoteCam na smartfonie z systemem Android.\nUpewnij się, że tryb strumieniowania jest aktywowany przed kontynuacją."
	ip_prompt="Proszę podać adres IP smartfona, \nna którym działa serwer mjpeg:"
	info_ip="Adres IP serwera MJPEG:"
	module_loading="Wyłączanie / ładowanie modułu v4l2loopback"
	password_prompt="Proszę podać hasło użytkownika w celu kontynuacji:"
	success_password="Hasło wprowadzone pomyślnie."
	cancel_password="Anulowanie wprowadzania hasła. Skrypt nie zostanie wykonany."
	cancel_ip="Anulowanie wprowadzania adresu IP. Skrypt nie zostanie wykonany."
	ffmpeg_execution="Wykonywanie ffmpeg z wprowadzonym adresem IP."
        ;;
    "hu")
	instructions="Kérjük, indítsa el a RemoteCam alkalmazást Android okostelefonján.\nGyőződjön meg róla, hogy a stream mód aktív, mielőtt folytatná."
	ip_prompt="Kérjük, adja meg okostelefonja IP-címét \namely mjpeg szerver fut:"
	info_ip="MJPEG szerver IP-címe:"
	module_loading="v4l2loopback modul kiszerelése / betöltése"
	password_prompt="Kérjük, adja meg felhasználói jelszavát a folytatáshoz:"
	success_password="Jelszó sikeresen megadva."
	cancel_password="Jelszó megadásának megszakítása. A szkript nem fut le."
	cancel_ip="IP cím megadásának megszakítása. A szkript nem fut le."
	ffmpeg_execution="ffmpeg futtatása a megadott IP-címmel."
        ;;
    "sk")
	instructions="Prosím, spustite aplikáciu RemoteCam na svojom Android smartfóne.\nUistite sa, že je aktivovaný režim streamovania pred pokračovaním."
	ip_prompt="Prosím, zadajte IP adresu vášho smartfónu, \nna ktorom beží server mjpeg:"
	info_ip="IP adresa servera MJPEG:"
	module_loading="Vykladanie / načítanie modulu v4l2loopback"
	password_prompt="Prosím, zadajte svoje užívateľské heslo na pokračovanie:"
	success_password="Heslo úspešne zadané."
	cancel_password="Zrušenie zadávania hesla. Skript sa nevykoná."
	cancel_ip="Zrušenie zadávania IP adresy. Skript sa nevykoná."
	ffmpeg_execution="Spúšťa sa ffmpeg s zadanou IP adresou."
        ;;
    "sl")
	instructions="Prosimo, zaženite aplikacijo RemoteCam na svojem Android pametnem telefonu.\nPoskrbite, da je način pretakanja omogočen, preden nadaljujete."
	ip_prompt="Prosimo, vnesite IP naslov svojega pametnega telefona, \nki poganja strežnik mjpeg:"
	info_ip="IP naslov strežnika MJPEG:"
	module_loading="Razkladanje / nalaganje modula v4l2loopback"
	password_prompt="Prosimo, vnesite geslo za nadaljevanje:"
	success_password="Geslo uspešno vneseno."
	cancel_password="Preklic vnosa gesla. Skript se ne bo izvedel."
	cancel_ip="Preklic vnosa IP naslova. Skript se ne bo izvedel."
	ffmpeg_execution="Izvajanje ffmpeg s vpisanim IP naslovom."
	;;
    "et")
	instructions="Palun käivitage rakendus RemoteCam oma Androidi nutitelefonis.\nVeenduge, et voogerežiim oleks enne jätkamist aktiveeritud."
	ip_prompt="Palun sisestage oma nutitelefoni IP-aadress, \nmillel töötab mjpeg-server:"
	info_ip="MJPEG serveri IP-aadress:"
	module_loading="v4l2loopback mooduli mahalaadimine / laadimine"
	password_prompt="Palun sisestage jätkamiseks oma kasutajasalasõna:"
	success_password="Salasõna sisestamine õnnestus."
	cancel_password="Salasõna sisestamise tühistamine. Skripti ei käivitata."
	cancel_ip="IP-aadressi sisestamise tühistamine. Skripti ei käivitata."
	ffmpeg_execution="ffmpeg käivitamine sisestatud IP-aadressiga."
        ;;
    "lv")
	instructions="Lūdzu, startējiet aplikāciju RemoteCam savā Android viedtālrunī.\nPārliecinieties, ka straumēšanas režīms ir ieslēgts pirms turpināt."
	ip_prompt="Lūdzu, ievadiet savas viedtālruņa IP adresi, \nuz kura darbojas mjpeg serveris:"
	info_ip="MJPEG servera IP adrese:"
	module_loading="v4l2loopback moduļa izkraušana / ielāde"
	password_prompt="Lūdzu, ievadiet savu lietotāja paroli, lai turpinātu:"
	success_password="Parole veiksmīgi ievadīta."
	cancel_password="Paroles ievades atcelšana. Skripts netiks izpildīts."
	cancel_ip="IP adrese ievades atcelšana. Skripts netiks izpildīts."
	ffmpeg_execution="ffmpeg izpildīšana ar ievadīto IP adresi."
	;;
    "lt")
	instructions="Prašome paleisti aplikaciją RemoteCam savo Androido išmaniuoju telefonu.\nĮsitikinkite, kad srauto režimas yra įjungtas prieš tęsdami."
	ip_prompt="Prašome įvesti savo išmaniojo telefono IP adresą, \nkurį valdo mjpeg serveris:"
	info_ip="MJPEG serverio IP adresas:"
	module_loading="v4l2loopback modulio iškrovimas / įkrovimas"
	password_prompt="Prašome įvesti savo naudotojo slaptažodį, kad tęstumėte:"
	success_password="Slaptažodis sėkmingai įvestas."
	cancel_password="Slaptažodžio įvedimo atšaukimas. Skriptas nebus vykdomas."
	cancel_ip="IP adreso įvedimo atšaukimas. Skriptas nebus vykdomas."
	ffmpeg_execution="ffmpeg vykdymas su įvestu IP adresu."
	;;
    "ro")
	instructions="Vă rugăm să porniți aplicația RemoteCam pe smartphone-ul dvs. Android.\nAsigurați-vă că modul de flux este activat înainte de a continua."
	ip_prompt="Vă rugăm să introduceți adresa IP a smartphone-ului dvs., \npe care rulează serverul mjpeg:"
	info_ip="Adresa IP a serverului MJPEG:"
	module_loading="Descărcarea / încărcarea modulului v4l2loopback"
	password_prompt="Vă rugăm să introduceți parola de utilizator pentru a continua:"
	success_password="Parola introdusă cu succes."
	cancel_password="Anularea introducerii parolei. Scriptul nu va fi executat."
	cancel_ip="Anularea introducerii adresei IP. Scriptul nu va fi executat."
	ffmpeg_execution="Executarea ffmpeg cu adresa IP introdusă."
	;;
    "bg")
	instructions="Моля, стартирайте приложението RemoteCam на вашия Android смартфон.\nУверете се, че режимът на потока е активиран преди да продължите."
	ip_prompt="Моля, въведете IP адреса на вашия смартфон, \nна който работи mjpeg сървърът:"
	info_ip="IP адрес на MJPEG сървъра:"
	module_loading="Изгрузване / зареждане на модула v4l2loopback"
	password_prompt="Моля, въведете паролата си, за да продължите:"
	success_password="Паролата е въведена успешно."
	cancel_password="Отказ от въвеждането на паролата. Скриптът няма да бъде изпълнен."
	cancel_ip="Отказ от въвеждането на IP адреса. Скриптът няма да бъде изпълнен."
	ffmpeg_execution="Изпълнение на ffmpeg със въведения IP адрес."
	;;
    "hr")
	instructions="Molimo vas da pokrenete aplikaciju RemoteCam na svom Android pametnom telefonu.\nProvjerite je li režim prijenosa uključen prije nego nastavite."
	ip_prompt="Molimo vas da unesete IP adresu svog pametnog telefona, \nna kojem radi mjpeg server:"
	info_ip="IP adresa mjpeg servera:"
	module_loading="Iscrtavanje / učitavanje modula v4l2loopback"
	password_prompt="Molimo vas da unesete svoju korisničku lozinku za nastavak:"
	success_password="Lozinka uspješno unesena."
	cancel_password="Otkazivanje unosa lozinke. Skript se neće izvoditi."
	cancel_ip="Otkazivanje unosa IP adrese. Skript se neće izvoditi."
	ffmpeg_execution="Izvođenje ffmpeg-a s unesenom IP adresom."
        ;;
    "cy")
	instructions="Παρακαλούμε, εκκινήστε την εφαρμογή RemoteCam στο Android smartphone σας.\nΒεβαιωθείτε ότι ο κατάλληλος τρόπος ροής είναι ενεργοποιημένος πριν συνεχίσετε."
	ip_prompt="Παρακαλούμε, εισάγετε τη διεύθυνση IP του smartphone σας, \nστο οποίο λειτουργεί ο διακομιστής mjpeg:"
	info_ip="IP διεύθυνση του διακομιστή MJPEG:"
	module_loading="Εκφόρτωση / φόρτωση του οδηγού v4l2loopback"
	password_prompt="Παρακαλούμε, εισάγετε τον κωδικό πρόσβασής σας για να συνεχίσετε:"
	success_password="Επιτυχής εισαγωγή κωδικού πρόσβασης."
	cancel_password="Ακύρωση εισόδου κωδικού πρόσβασης. Το σενάριο δεν θα εκτελεστεί."
	cancel_ip="Ακύρωση εισόδου διεύθυνσης IP. Το σενάριο δεν θα εκτελεστεί."
	ffmpeg_execution="Εκτέλεση ffmpeg με την εισαγμένη διεύθυνση IP."
        ;;
    "ga")
        instructions="Seol an fheidhmchlár RemoteCam ar do ghuthán cliste Android. Cinntigh go bhfuil an mód sruthaitheáin cionn is ré amach romhat."
	ip_prompt="Cuir isteach seoladh IP do do ghuthán cliste\natá ag rith an mhjpeg freisin:"
	info_ip="Seoladh IP do do guthán cliste a bhfuil an mhjpeg ann:"
	module_loading="Modúl v4l2loopback a dhíchódú / a ghlacadh"
	password_prompt="Cuir isteach do phasfhocal úsáideora le leanúint ar aghaidh:"
	success_password="Pasfhocal curtha isteach go rathúil."
	cancel_password="Cealú ar iontráil na pasfhocail. Ní úlfadh an script."
	cancel_ip="Cealú ar iontráil an seoladh IP. Ní úlfadh an script."
	ffmpeg_execution="Fheidhmniú ffmpeg leis an seoladh IP iontráilte."
	;;
    "uk")
	instructions="Будь ласка, запустіть додаток RemoteCam на своєму смартфоні Android.\nПереконайтеся, що режим потоку активовано перед продовженням."
	ip_prompt="Будь ласка, введіть IP-адресу свого смартфона,\nде працює сервер mjpeg:"
	info_ip="IP-адреса сервера MJPEG:"
	module_loading="Вивантаження / завантаження модуля v4l2loopback"
	password_prompt="Будь ласка, введіть пароль користувача для продовження:"
	success_password="Пароль введено успішно."
	cancel_password="Скасування введення пароля. Сценарій не буде виконаний."
	cancel_ip="Скасування введення IP-адреси. Сценарій не буде виконаний."
	ffmpeg_execution="Виконання ffmpeg з введеною IP-адресою."
        ;;

    # Continuer avec les traductions pour d'autres langues si nécessaire
    *)
        # Par défaut, utiliser les traductions en anglais
        instructions="Please launch the RemoteCam application on your Android smartphone.\nMake sure that the stream mode is activated before continuing."
        ip_prompt="Please enter the IP address of your smartphone \nrunning the mjpeg server:"
        info_ip="MJPEG server IP address:"
        module_loading="Unloading / loading the v4l2loopback module"
        password_prompt="Please enter your user password to continue:"
        success_password="Password entered successfully."
        cancel_password="Cancellation of password entry. The script will not be executed."
        cancel_ip="Cancellation of IP address entry. The script will not be executed."
        ffmpeg_execution="Executing ffmpeg with the entered IP address."
        ;;
esac

# Boîte de dialogue demandant à l'utilisateur de lancer l'application RemoteCam sur son smartphone Android
kdialog --title "Instructions" --msgbox "$instructions"

# Emplacement du fichier de configuration
config_file="$HOME/.virtual_webcam_config"

# Lire l'adresse IP précédemment stockée
previous_ip=$(cat "$config_file" 2>/dev/null)

# Demander à l'utilisateur l'adresse IP du serveur MJPEG
server_ip=$(kdialog --inputbox "$ip_prompt" "$previous_ip")

# Vérifier si l'utilisateur a annulé la saisie
if [ $? -eq 0 ]; then
    # Si l'utilisateur a saisi une adresse IP, continuer
    kdialog --title "Information" --passivepopup "$info_ip $server_ip" 2

    # Stocker l'adresse IP dans le fichier de configuration
    echo "$server_ip" > "$config_file"

    # Demander le mot de passe à l'utilisateur
    password=$(kdialog --title "$module_loading" --password "$password_prompt")

    # Vérifier si l'utilisateur a annulé la saisie du mot de passe
    if [ $? -eq 0 ]; then
        # Si le mot de passe a été saisi, continuer
        kdialog --title "Information" --passivepopup "$success_password" 2

        # Utiliser le mot de passe avec sudo
        echo "$password" | sudo -S modprobe -r v4l2loopback
        echo "$password" | sudo -S modprobe v4l2loopback video_nr=0 card_label="Webcam" exclusive_caps=1

        # Exécuter ffmpeg avec l'adresse IP saisie
        kdialog --title "Information" --passivepopup "$ffmpeg_execution" 2
        ffmpeg -hide_banner -reconnect 1 -reconnect_at_eof 1 -reconnect_streamed 1 -timeout 30000000 -stream_loop -1 -f mjpeg -i "http://$server_ip:8080/cam.mjpeg" -vf "format=yuv420p, transpose=1,transpose=1,fps=30" -f v4l2 /dev/video0 > /dev/null 2>&1
    else
        # Si l'utilisateur a annulé la saisie du mot de passe, afficher un message
        kdialog --title "Information" --passivepopup "$cancel_password" 3
    fi
else
    # Si l'utilisateur a annulé la saisie de l'adresse IP, afficher un message
    kdialog --title "Information" --passivepopup "$cancel_ip" 3
fi
