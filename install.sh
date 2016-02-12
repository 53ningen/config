git config --global alias.st status
git config --global alias.pr "!sh -c 'git fetch $1 pull/$2/head & git co FETCH_HEAD\n' -"
git config --global alias.fc commit -m "fixup"
git config --global alias.fr rebase -i HEAD~2

