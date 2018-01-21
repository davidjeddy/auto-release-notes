#!/bin/bash

# Source: http://brettterpstra.com/2014/08/03/shell-tricks-changelogs-with-git/

# TODO would like to print the var literal AND the value
function var_print() {
    varName=$1
    var_name=(${!varName@})
    echo "$varName: "+$1
}

#git rev-list --tags --max-count=1
#git show -s --format=%ad `git rev-list --tags --max-count=1`
#lastdate=$(git show -s --format=%ad `git rev-list --tags --max-count=1`)
#git log --oneline --pretty=format:"%ad: %s" --date=short --since="$lastdate"
#git log --pretty=format:"- %s%n%b" --since="$lastdate"

latestTagRev=(`git rev-list --tags --max-count=1`)
var_print $latestTagRev

latestTag=(`git describe --exact-match --tags $latestTagRev`)
var_print $latestTag

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