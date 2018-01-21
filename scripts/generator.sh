#!/bin/bash

# Source: http://brettterpstra.com/2014/08/03/shell-tricks-changelogs-with-git/
#git rev-list --tags --max-count=1
#git show -s --format=%ad `git rev-list --tags --max-count=1`
#lastdate=$(git show -s --format=%ad `git rev-list --tags --max-count=1`)
#git log --oneline --pretty=format:"%ad: %s" --date=short --since="$lastdate"
#git log --pretty=format:"- %s%n%b" --since="$lastdate"
git log --pretty=format:"- %s%n%b" --since="$(git show -s --format=%ad `git rev-list --tags --max-count=1`)" > ../release-changes.md
