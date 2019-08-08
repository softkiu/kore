#!/bin/bash

# exit if anything returns error code
# we are interested about git pull, if we fail the update
# then we should update container image with latest version of the bot
set -e

cd /openkore
git pull

exec /openkore/openkore.pl