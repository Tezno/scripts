# Edit old commit

## Get commit message and sha1 commit

`git log`

## Git commit message graph
`git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit`

## Rebase interactif

`git rebase -i <commit>`

## Reset file

`git reset HEAD^`
`git reset <commit_id>`

## Edit all files

## Add file

`git add .`

## Commit file

`git commit -m "<commit_message>"`

## Amend without change message
`git commit --amend --no-edit`
