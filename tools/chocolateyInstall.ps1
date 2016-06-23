$packageName = 'hwmonitor';
$installerType = 'EXE';
$url = 'http://download.cpuid.com/hwmonitor/hwmonitor_1.29.exe';
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-';
$validExitCodes = @(0);
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes;
