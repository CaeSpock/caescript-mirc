#define MyAppName "CaeScript"
#define MyAppVersion "7.0"
#define MyAppPublisher "WhiteSith Solutions Inc"
#define MyAppURL "http://www.caespock.org/ircsoftware/"

[Setup]
AppId={{D042B481-4AAA-4F72-BF92-2434206E4F78}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion} build 20180812
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\mIRC
DisableDirPage=yes
DefaultGroupName=mIRC
DisableProgramGroupPage=yes
LicenseFile=caescript\iss\licencia.txt
InfoBeforeFile=caescript\iss\infoantes.txt
InfoAfterFile=caescript\iss\infodespues.txt
OutputDir=.
OutputBaseFilename=caescript-7-0
Compression=lzma
SolidCompression=yes
DisableWelcomepage=no
PrivilegesRequired=none
Uninstallable=true
AlwaysShowDirOnReadyPage=true
AlwaysShowGroupOnReadyPage=true
DirExistsWarning=no
AppendDefaultDirName=false
UserInfoPage=true
AppCopyright=Copyright � 2000-2018 WhiteSith Solutions Inc
WizardImageFile=caescript\iss\caescript-install.bmp
WizardSmallImagefile=caescript\iss\mirc-install.bmp
VersionInfoVersion=7.0
VersionInfoCompany=WhiteSith Solutions Inc
VersionInfoDescription=CaeScript
VersionInfoCopyright=2000-2018 WhiteSith Solutions Inc
AppMutex=CaeScript
ShowLanguageDialog=no
UninstallDisplayName=CaeScript
InternalCompressLevel=ultra
VersionInfoTextVersion=CaeScript 7.0
UninstallDisplayIcon={app}\caescript\caescript.icl,15
VersionInfoProductName=CaeScript
VersionInfoProductVersion=7.0
AlwaysShowComponentsList=true
EnableDirDoesntExistWarning=true
AllowUNCPath=false

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Dirs]
Name: "{app}\ircoptools"
Name: "{app}\caescript"
Name: "{app}\caescript\addons"
Name: "{app}\caescript\ascii"
Name: "{app}\caescript\poemas"
Name: "{app}\caescript\sounds"
Name: "{app}\caescript\temas"
Name: "{app}\caescript\temas\caescript"

[Files]
Source: "ircoptools\changelog.txt"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\default.ini"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\INSTALL.txt"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\ircoptools.chm"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\ircoptools.icl"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\ircoptools.ini"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\ircoptools.mrc"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\ircoptools.txt"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "ircoptools\windowfilter.mrc"; DestDir: "{app}\ircoptools"; Flags: ignoreversion
Source: "caescript\aliases.mrc"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\autoexec.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\caescript.chm"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\caescript.icl"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\caescript.mrc"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\caescript.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\ChangeLog.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\chistes.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\cnicks.ini"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\default.ini"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\frases.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\INSTALAR.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\mirc.ico"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\piropos.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\popups.mrc"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\registro.txt"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\tbwin.dll"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\variables.ini"; DestDir: "{app}\caescript"; Flags: ignoreversion
Source: "caescript\addons\aamp.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\addons.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\addons.txt"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\calc.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\clonescan.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\dalnet.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\eggdrop.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\IPTracer.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\lagbkg.bmp"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\addons\zlagbar.mrc"; DestDir: "{app}\caescript\addons"; Flags: ignoreversion
Source: "caescript\ascii\12rosas.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\abrazo.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\abrazo2.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\aguila.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\alien.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\angel.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\angel2.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\arbolnavidad.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\baile.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\baronr.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\besito.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\boo.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\buho.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\bunny.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\conejito.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\corazon.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\corazon2.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\diablito.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dino.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dragon.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dragon2.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dragon3.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dragon4.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dragon5.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dragon6.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\dragon7.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\garfield.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\garras.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\gatito.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\gato.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\gato2.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\gato3.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\heli.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\hombrehielo.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\info.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\kiss.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\leon.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\letsrock.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\lobo.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\m&m.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\navegando.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\odie.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\osicora.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\osito.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\ositos.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\osopeluche.TXT"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\paces.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\pantera.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\perrito.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\perrito2.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\pop.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\pyc.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\rosa.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\rosa2.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\rosa3.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\rosa4.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\snoopy.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\sol.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\stones.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\taz.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\tiger.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\train.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\tucan.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\unicornio.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\woods.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\ascii\yoytu.txt"; DestDir: "{app}\caescript\ascii"; Flags: ignoreversion
Source: "caescript\poemas\amiga.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\brillojo.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\buscan.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\cuando.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\detenid.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\deti.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\eltiempo.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\errores.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\estela.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\estrella.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\felicid.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\info.txt"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\locura.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\necesito.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\nohapasa.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\nostalg.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\quedate.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\quien.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\semilla.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\sinti.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\solopi.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\sonar.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\teamo.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\tueres.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\tusojos.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\poemas\valor.poe"; DestDir: "{app}\caescript\poemas"; Flags: ignoreversion
Source: "caescript\sounds\3bonks.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\aaawww.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\ack.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\ack2.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\adios.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\Aerosol.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\AH.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\Ah_ha.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\aplauso.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\arcoflecha.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\aterrizaje.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\bazuka.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\beeper.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\beer.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\blink.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\Boing.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\boing2.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\boing3.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\camara.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\campana.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\cohetillos.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\connect.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\cow.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\cuckoo.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\data.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\explosion.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\feelgood.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\foca.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\golpe.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\golpear.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\golpes.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\golpesito.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\gritito.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\grito.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\haha.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\help.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\HMMPH.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\hola.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\hueco.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\info.txt"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\intro-2.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\intro-3.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\intro-4.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\intro.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\karatazo.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\kiss.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\ladrido.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\leon.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\medieval.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\misil.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\moo.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\nana.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\ohh.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\ok.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\OUCH.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\ovacion.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\page.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\pop.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\rana.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\risamist.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\signal.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\sirena.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\sopapo.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\supersonico.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\tarzan.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\terminator.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\toing.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\tos.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\ventana.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\vidrio.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\vidrio2.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\vidrios.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\vidrios2.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\vidrios3.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\viento.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\whatsup.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\WHIZZ.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\xylobass.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\yuck.WAV"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\sounds\Zap.wav"; DestDir: "{app}\caescript\sounds"; Flags: ignoreversion
Source: "caescript\temas\caescript\beeper.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\botones.bmp"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\desktop.ini"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\fondo.bmp"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\fondob.bmp"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\fondoiconos.bmp"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\intro.mp3"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\invite.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\join.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\kicked.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\pager.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\regla.bmp"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\reloj.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\salto.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\tema.ini"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion
Source: "caescript\temas\caescript\version.wav"; DestDir: "{app}\caescript\temas\caescript"; Flags: ignoreversion

[Ini]
Filename: {app}\scripts\aliases.ini; Section: aliases; Key: n5; String: /w /whois $1-
Filename: {app}\scripts\aliases.ini; Section: aliases; Key: n7; String: /q /query $1-
Filename: {app}\perform.ini; Section: perform; Key: n0; String: All Networks,/load -rs caescript\caescript.mrc; Flags: createkeyifdoesntexist uninsdeleteentry; Languages: 
Filename: {app}\urls.ini; Section: urls; Key: n4; String: 5:Pagina CaeScript:http://www.caespock.org/ircsoftware/; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: connect; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: query; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: notice; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: invite; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: disconnect; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: send; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: flash; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: dccfail; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: chat; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: join; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: part; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: kick; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: dccok; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: query; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: waves; Key: query; String: No Sound; Flags: createkeyifdoesntexist
Filename: {app}\mirc.ini; Section: options; Key: n0; String: 0,1,0,1,0,1,300,0,1,0,1,0,0,0,0,0,1,0,1,0,4096,0,1,0,1,1,1,1,0,50,1,0,0,1,0; Flags: createkeyifdoesntexist; Languages: 

[Icons]
Name: {group}\Ayuda del CaeScript 7.0; Filename: {app}\caescript\caescript.chm; WorkingDir: {app}; Comment: Ayuda del CaeScript 7.0
Name: {group}\IRCopTools 7.0 Help; Filename: {app}\ircoptools\ircoptools.chm; WorkingDir: {app}; Comment: IRCopTools 7.0 for mIRC Help
Name: {group}\mIRC; Filename: {app}\mirc.exe; WorkingDir: {app}; Comment: mIRC; IconFilename: {app}\mirc.ico; Flags: createonlyiffileexists uninsneveruninstall

[Code]
function IsmIRCInstalled: boolean;
begin
  result := FileExists(ExpandConstant('{userappdata}\mIRC\mirc.ini'));
end;

function InitializeSetup: boolean;
var
  Result1 : boolean;
  ErrorCode: integer;

begin
  result := IsmIRCInstalled;
  if not result then
    Result1 := MsgBox('Necesitas instalar mIRC desde http://www.mirc.co.uk/ antes de instalar CaeScript.' + #13 + #10 + 'Instala mIRC y vuelve a este instalador.' + #13 + #10 + 'Deseas descargarlo ahora?',
          mbConfirmation, MB_YESNO) = idYes;
        if Result1 = true then
        begin
            ShellExec('open',
              'https://www.mirc.co.uk/get.html',
              '','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
        end;
end;
