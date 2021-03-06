; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "HTMLAnalyser"
#define MyAppVersion "1.5"
#define MyAppPublisher "Sixu Hu"
#define MyAppURL "https://github.com/husixu1/HTMLAnalyser"
#define MyAppExeName "HTMLAnalyser.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{16C5148B-5297-4C83-BA6D-7155F771DA19}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=D:\Projects\HTMLAnalyser\proj.win32\Release.win32\Resources\LICENSE.txt
InfoBeforeFile=D:\Projects\HTMLAnalyser\proj.win32\Release.win32\Resources\LICENSE.txt
InfoAfterFile=D:\Projects\HTMLAnalyser\proj.win32\Release.win32\Resources\AFTERINSTALL.txt
OutputDir=D:\Projects\HTMLAnalyser\InnoSetup
OutputBaseFilename=HTMLAnalyser_Setup
SetupIconFile=D:\Projects\HTMLAnalyser\proj.win32\res\game.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\HTMLAnalyser.exe"; DestDir: "{app}";
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\glew32.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\iconv.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\libcocos2d_2015.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\libcurl.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\libmpg123.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\libogg.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\libtiff.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\libvorbis.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\libvorbisfile.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\lua51.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\mozjs-33.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\OpenAL32.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\sqlite3.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\zlib1.dll"; DestDir: "{app}"; 
Source: "D:\Projects\HTMLAnalyser\proj.win32\Release.win32\Resources\*"; DestDir: "{app}\Resources"; Flags: recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

