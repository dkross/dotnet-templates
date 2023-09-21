Set-Location $PSScriptRoot
dotnet new install ../templates

# Solution Test
dotnet new dkross.sln -o temp -n Temp --allow-scripts yes `
    --git-init `
    --git-remote-url https://github.com/dkross/git-test.git

# ClassLibrary Test
Set-Location temp
dotnet new dkross.lib -o src/lib -n DKrOSS.Lib
dotnet sln add src/lib/DKrOSS.Lib.csproj

# Class Test
Push-Location src/lib
dotnet new dkross.class -n Settings
Pop-Location

# ConsoleApp Test
dotnet new dkross.console -o src/ConsoleApp -n DKrOSS.ConsoleApp
dotnet sln add src/ConsoleApp/DKrOSS.ConsoleApp.csproj

Read-Host "Press ENTER to start cleanup..."
Set-Location $PSScriptRoot
Remove-Item -Force -Recurse temp
dotnet new uninstall ../templates
