$packageName = 'hwmonitor'
$installerType = 'EXE'
$url = 'ftp://ftp.cpuid.com/hwmonitor/hwmonitor_1.26-setup.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes