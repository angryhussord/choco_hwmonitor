$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'http://download.cpuid.com/hwmonitor/hwmonitor_1.40.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'hwmonitor*'
  checksum      = '88BF47896738698CE3C5DB75B876283584AF9FD0F951D80CF6996547E7A93AF3'
  checksumType  = 'sha256'
};
if (Test-Path "C:\users\Public\Desktop\CPUID HWMonitor.lnk") {$KeepIcon = $True}
Install-ChocolateyPackage @packageArgs;
if (!$KeepIcon) {Remove-Item 'C:\Users\Public\Desktop\CPUID HWMonitor.lnk'};