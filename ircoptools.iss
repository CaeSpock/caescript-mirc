#define MyAppName "IRCopTools"
#define MyAppVersion "7.0"
#define MyAppPublisher "WhiteSith Solutions Inc"
#define MyAppURL "http://www.caespock.org/ircsoftware/"

[Setup]
AppId={{9535F1DC-D05B-4A06-94C6-B9D59CF726F3}
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
LicenseFile=ircoptools\iss\license.txt
InfoBeforeFile=ircoptools\iss\infobefore.txt
InfoAfterFile=ircoptools\iss\infoafter.txt
OutputDir=.
OutputBaseFilename=ircoptools-7-0
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
AppCopyright=Copyright © 2000-2018 WhiteSith Solutions Inc
WizardImageFile=ircoptools\iss\ircoptools-install.bmp
WizardSmallImagefile=ircoptools\iss\mirc-install.bmp
VersionInfoVersion=7.0
VersionInfoCompany=WhiteSith Solutions Inc
VersionInfoDescription=IRCopTools
VersionInfoCopyright=2000-2018 WhiteSith Solutions Inc
AppMutex=IRCopTools
ShowLanguageDialog=no
UninstallDisplayName=IRCopTools
InternalCompressLevel=ultra
VersionInfoTextVersion=IRCopTools 7.0
UninstallDisplayIcon={app}\ircoptools\ircoptools.icl,11
VersionInfoProductName=IRCopTools
VersionInfoProductVersion=7.0
AlwaysShowComponentsList=true
EnableDirDoesntExistWarning=true
AllowUNCPath=false

[Dirs]
Name: "{app}\ircoptools"

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

[Ini]

[Icons]
Name: {group}\IRCopTools 7.0 Help; Filename: {app}\ircoptools\ircoptools.chm; WorkingDir: {app}; Comment: IRCopTools 7.0 for mIRC Help

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
    Result1 := MsgBox('You need to install mIRC from http://www.mirc.co.uk/ before you install IRCopTools.' + #13 + #10 + 'Install mIRC and return to this installer.' + #13 + #10 + 'Do you want to download it now?',
          mbConfirmation, MB_YESNO) = idYes;
        if Result1 = true then
        begin
            ShellExec('open',
              'https://www.mirc.co.uk/get.html',
              '','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
        end;
end;
