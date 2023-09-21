Set-Location $PSScriptRoot
dotnet new install ../templates

dotnet new dkross.sln -o temp -n Temp --allow-scripts yes -g -gi https://github.com/dkross/git-test.git

Set-Location temp
dotnet new dkross.lib -o src/lib -n DKrOSS.Lib
dotnet sln add src/lib/DKrOSS.Lib.csproj

Push-Location src/lib
dotnet restore
dotnet new dkross.class -n Settings
Pop-Location

Invoke-Item .

Read-Host "Press ENTER to start cleanup..."
Set-Location $PSScriptRoot
Remove-Item -Force -Recurse temp
dotnet new uninstall ../templates
