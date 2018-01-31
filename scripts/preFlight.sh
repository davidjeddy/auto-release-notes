#!/bin/bash

RELEASENOTESFILE=''

# Check for .git repo at PRJPATH
# Ref: https://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
if [ ! -d ${PRJPATH}.git ]; then
    echo "Git repository not found at ${PRJPATH}. Aborting"
    exit 10
fi

# Check for existance of PRJPATH/release-notes.md
# ref : https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash
RELEASENOTESFILE=${PRJPATH}RELEASE-NOTES.md
if [ ! -f ${RELEASENOTESFILE} ]; then
    echo "RELEASE-NOTES.md not found at ${RELEASENOTESFILE}. Creating..."
    touch ${RELEASENOTESFILE}
    echo "# Release Notes " > ${RELEASENOTESFILE}
fi

