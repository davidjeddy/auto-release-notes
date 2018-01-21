#!/bin/bash

# Source: http://brettterpstra.com/2014/08/03/shell-tricks-changelogs-with-git/

latestTagRev=(`git rev-list --tags --max-count=1`)

latestTag=(`git describe --exact-match --tags $latestTagRev`)

# add the release tag
echo "#$latestTag#"$'\r' >> ../release-changes.md

# add the git list of changes
git log \
    --date=short \
    --pretty=format:"- %s%n%b" \
    --since="$(git show -s --format=%ad $latestTagRev)" \
    >> ../release-changes.md

# TOOO
# Toggle to use leader words as an  array of leader words to look for