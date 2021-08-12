# This my profile in PorwerShell
# Created on 29-July-2021

# The PromptConfiguration
Function prompt {
    #$currentDirectory = Get-Location
    $CmdPromptCurrentFolder = Split-Path -Path $pwd -Leaf

    Write-Host "LandiLeite 📁" -NoNewline -ForegroundColor Blue
    Write-Host "$CmdPromptCurrentFolder" -NoNewline -ForegroundColor Yellow
    Write-Host
    return "⚡ "
} # End of my PromptConfig

# Others Function
Function JUPYTER {Start-Job {jupyter-lab}}

# The Functions

# The Aliases
Set-Alias -Name jlab  -Value JUPYTER 
