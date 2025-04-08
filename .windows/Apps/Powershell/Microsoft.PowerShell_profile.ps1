# --> Envs
$Global:PROFILE_HOME = (
  $PROFILE -split "\\" | ForEach-Object {
    if ($_.Contains(".ps1")) { return }  return $_
  }) -join "\\"

# --> Imports
Import-Module -Name PSReadLine
Import-Module -Name Terminal-Icons
Import-Module -Name "${PROFILE_HOME}\Helpers\OhMyPosh.ps1"
Import-Module -Name "${PROFILE_HOME}\Helpers\Gamemode.ps1"

# --> Settings
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key Tab -Function TabCompleteNext

# --> Styles
OhMyPoshTheme("kushal")

# --> Features

# --> Aliases
