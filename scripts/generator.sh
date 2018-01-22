#!/bin/bash
# Source: http:/brettterpstra.com/2014/08/03/shell-tricks-changelogs-with-git/

# check for script argument 1
PRJROOT=$PWD
if [ $# -ne 0 ]
  then
    PRJROOT=$1
fi

# change to specific project root
cd $PRJROOT

# ensure output dir exists
if [ ! -f ./release-changes.md ]; then
    touch ./release-changes.md
fi

latestTagRev=(`git rev-list --tags --max-count=1`)

latestTag=(`git describe --exact-match --tags $latestTagRev`)

echo $"#CHANGELOG"$'\r' > ./doctitle

# add the release tag
echo $'\r'"## $latestTag"$'\r' > ./changeTitle

# add the git list of changes
git log \
    --date=short \
    --pretty=format:"- %s%n%b" \
    --since="$(git show -s --format=%ad $latestTagRev)" \
    > ./changeBody

# TODO check if version changes already exists: Remove title and release notes if yes.

cat ./doctitle ./changeTitle ./changeBody ./release-changes.md >out && mv out ./release-changes.md
rm ./doctitle && rm ./changeTitle && rm ./changeBody

# TOOO
# Toggle to use leader words as an  array of leader words to look for
