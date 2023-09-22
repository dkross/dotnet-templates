Remove-Item -Force $PSCommandPath
git init
git config commit.gpgsign true
git add .
git commit -m "Initial commit"
##EnableGitRemoteAdd##git remote add ##GitRemoteAlias## ##GitRemoteUrl##
