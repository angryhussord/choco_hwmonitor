$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'http://download.cpuid.com/hwmonitor/hwmonitor_1.41.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'hwmonitor*'
  checksum      = '2203E10B9277C0D74C3C12DC6808EA82F581FE01BD78A51B064D413EEA9FD149'
  checksumType  = 'sha256'
};
if (Test-Path "C:\users\Public\Desktop\CPUID HWMonitor.lnk") {$KeepIcon = $True}
Install-ChocolateyPackage @packageArgs;
if (!$KeepIcon) {Remove-Item 'C:\Users\Public\Desktop\CPUID HWMonitor.lnk'};