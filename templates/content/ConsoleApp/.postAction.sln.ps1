Remove-Item -Force $PSCommandPath
dotnet sln ##SolutionPath## add ConsoleApp1.csproj -s "03 - Projects"
git add -v .
git commit -am "Added project ConsoleApp1"
