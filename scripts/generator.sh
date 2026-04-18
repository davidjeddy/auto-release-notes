#!/bin/bash
# Source: http:/brettterpstra.com/2014/08/03/shell-tricks-changelogs-with-git/

latestTagRev=(`git rev-list --tags --max-count=1`)

echo - latestTagRev = ${latestTagRev}

latestTag=(`git describe --exact-match --tags $latestTagRev`)

echo - latestTag = ${latestTag}

# add the release tag
echo $'\r'"## ${latestTag}"$'\r' >> ${RELEASENOTESFILE}

# add the git list of changes
git log \
    --date=short \
    --pretty=format:"- %s%n%b" \
    --since="$(git show -s --format=%ad $latestTagRev)" \
    >> ${RELEASENOTESFILE}
