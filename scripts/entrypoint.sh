#!/bin/bash

# parse arguments passed into vars

. ./parseArgs.sh
. ./preFlight.sh

echo "Values passed into process:"
echo  - PRJPATH    = ${PRJPATH}
echo  - RECENTONLY = ${RECENTONLY}
echo  - RELEASENOTESFILE = ${PRJPATH}RELEASE-NOTES.md

. ./generator.sh

# combine title + generated change set + existing file value
#. ./generator.sh