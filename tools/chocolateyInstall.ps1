$ErrorActionPreference = 'Stop';

$packageName = 'hwmonitor';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE';
$url = 'http://download.cpuid.com/hwmonitor/hwmonitor_1.30.exe';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'hwmonitor*'
  checksum      = '086E5B73582BB493E1B71CCCEF536865E6DFE9FC18468AC38BDFE7BE0D4486D4'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;