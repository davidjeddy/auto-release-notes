#!/bin/bash

# parse arguments passed into vars

. ./parseArgs.sh


# Does release-notes.md exists?
# no: generate entire change set IF `--recent-only` is NOT set
# yes: generate from now to prev. tag
#. ./generator.sh

# combine title + generated change set + existing file value
#. ./generator.sh