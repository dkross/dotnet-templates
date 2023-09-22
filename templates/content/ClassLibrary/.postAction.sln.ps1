Remove-Item -Force $PSCommandPath
dotnet sln ##SolutionPath## add ClassLib1.csproj -s "03 - Projects"
git add -v .
git commit -am "Added project ClassLib1"
