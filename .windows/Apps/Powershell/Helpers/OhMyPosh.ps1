function OhMyPoshTheme {
  param (
    [string]$theme
  )

  oh-my-posh init pwsh --config "${Env:POSH_THEMES_PATH}\$theme.omp.json" | Invoke-Expression
}
