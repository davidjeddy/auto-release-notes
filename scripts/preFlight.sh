#!/bin/bash

# Check for .git repo at PRJPATH
# Ref: https://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
if [ ! -d ${PRJPATH}.git ]; then
    echo "Git repository not found at ${PRJPATH}. Aborting"
    exit 10
fi

# Check for existance of PRJPATH/release-notes.md
# ref : https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash
if [ ! -f ${PRJPATH}RELEASE-NOTES.md ]; then
    echo "RELEASE-NOTES.md not found at ${PRJPATH}. Creating..."
    touch ${PRJPATH}RELEASE-NOTES.md
    echo "# Release Notes " > ${PRJPATH}RELEASE-NOTES.md
fi

