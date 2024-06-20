#define MyAppName "Twitter Miiverse Yeah! Auto Paste"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "NanoBunTV"
#define MyAppURL "https://github.com/NanoBunTV/TwitterMiiverseYeahAutoPaste"
#define MyAppPublisherURL "https://nanobun.tv"
#define MyAppSupportURL "https://github.com/NanoBunTV/TwitterMiiverseYeahAutoPaste/issues"
#define MyAppUpdatesURL "https://github.com/NanoBunTV/TwitterMiiverseYeahAutoPaste/releases"
#define MyAppCopyright "Copyright (C) 2024 NanoBunTV"

[Setup]
AppId={{DECE8429-8DBC-4DB0-800C-CC3FE38D41D6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} v{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppPublisherURL}
AppSupportURL={#MyAppSupportURL}
AppUpdatesURL={#MyAppUpdatesURL}
DefaultDirName={userdocs}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=Setup_TwitterMiiverseYeahAutoPaste_v{#MyAppVersion}
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
MinVersion=0,10.0.19045
DisableWelcomePage=False
WizardStyle=modern
AppCopyright={#MyAppCopyright}
UsePreviousPrivileges=True
RestartIfNeededByRun=False
AllowCancelDuringInstall=False
ShowLanguageDialog=no
AppContact=contact@nanobun.tv
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Lorem ipsum 1
VersionInfoCopyright={#MyAppCopyright}
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion} 
VersionInfoProductTextVersion=v{#MyAppVersion}    
VersionInfoOriginalFileName=Setup_TwitterMiiverseYeahAutoPaste_v{#MyAppVersion}
OutputDir=output

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\TwitterMiiverseYeahAutoPaste\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Dirs]
Name: "{app}\assets"; Attribs: hidden

[Run]
Filename: "cmd"; Parameters: "/c start """" ""ms-windows-store://pdp?productid=9nblggh4nns1"""; Flags: shellexec waituntilterminated runhidden; StatusMsg: "Waiting for user confirmation..."
Filename: "WingetPauseWarning.vbs"; WorkingDir: "{app}\assets"; Flags: shellexec waituntilterminated; StatusMsg: "Waiting for user confirmation..."
Filename: "WingetPauseWarning2.vbs"; WorkingDir: "{app}\assets"; Flags: shellexec waituntilterminated; StatusMsg: "Waiting for user confirmation..."
Filename: "winget"; Parameters: "install --id Microsoft.Powershell --source winget --accept-package-agreements --accept-source-agreements"; Flags: shellexec waituntilterminated runhidden; StatusMsg: "Installing the latest release of Powershell..."
Filename: "pwsh"; Parameters: "-NoProfile -ExecutionPolicy Bypass -File .\WDExceptionSetup.ps1"; WorkingDir: "{app}\assets"; Flags: shellexec waituntilterminated runhidden; StatusMsg: "Downloading ""cmdow.exe"" and telling Windows Defender to shut up about it..."

[UninstallRun]
Filename: "pwsh"; Parameters: "-NoProfile -ExecutionPolicy Bypass -File .\UninstallCleanupNoConfirm.ps1"; WorkingDir: "{app}\assets"; Flags: shellexec waituntilterminated runhidden
Filename: "pwsh"; Parameters: "-NoProfile -ExecutionPolicy Bypass -File .\DeleteAllBatchAndPSFiles.ps1"; WorkingDir: "{app}\assets\reset-stuff"; Flags: shellexec waituntilterminated runhidden
