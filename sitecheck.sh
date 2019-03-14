#!/bin/sh
#
# This is a work in progress
#
# Function:
# Get the HTTP response for each site in our network

for site in $(cat sitelist.txt )
do
    echo "Working on $site now"
    export BEHAT_PARAMS='{"extensions" : {"Behat\\MinkExtension" : {"base_url" : "'${site}'"}}}'
    bin/behat
done
