class Application {
  [string]$Name
  [string]$FilePath

  Application([string]$Name, [string]$FilePath) {
    $this.Name = $Name
    $this.FilePath = $FilePath
  }
}

function Gamemode {
  $Applications = @(
    [Application]::new("Rainmeter", "$HOME/scoop/apps/rainmeter/current/Rainmeter.exe")
    [Application]::new("OneDrive", "$HOME/AppData/Local/Microsoft/OneDrive/OneDrive.exe")
    [Application]::new("Flow.Launcher", "$HOME/scoop/apps/flow-launcher/current/Flow.Launcher.exe")
  )

  $Applications | ForEach-Object {
    if (Get-Process -Name $_.Name -ErrorAction SilentlyContinue) {
      Stop-Process -Name $_.Name -Force -ErrorAction SilentlyContinue
    }
    else {
      Start-Process -FilePath $_.FilePath -ErrorAction SilentlyContinue
    }
  }
}
