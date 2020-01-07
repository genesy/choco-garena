$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://cdn.gxx.garenanow.com/gxx/pc/installer/Garena-v2.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDchoir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'garena*'

  checksum      = '2DA45C2783C2B9A0B30515603E54487E121542CDA852502376FB4152E0C73F95'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'           # NSIS
}

Install-ChocolateyPackage @packageArgs
