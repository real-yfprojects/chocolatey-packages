
$packageName  = 'eurkey'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'eurkey_ia64.msi'

$packageArgs = @{
  packageName   = $packageName
  softwareName  = 'Eurkey*'
  file          = $fileLocation
  fileType      = 'msi'
  silentArgs    = "/quiet"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs