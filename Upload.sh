#!/bin/bash
######## DOWNLOAD AND INVOKE "GHR" - a tool capable of uploading a release to GitHub

echo Grabbing GHR

#go get -u -f -v github.com/tcnksm/ghr

wget https://github.com/tcnksm/ghr/releases/download/v0.5.3/ghr_v0.5.3_linux_amd64.zip

uzip ghr_v0.5.3_linux_amd64.zip -d .

echo Finished downloading GHR. Progressing with the upload.

ghr -t $GITHUB_TOKEN -u $CIRCLE_PROJECT_USERNAME -r $CIRCLE_PROJECT_REPONAME --replace $VERSION $ARTIFACTS
ghr -t $GITHUB_TOKEN -u $CIRCLE_PROJECT_USERNAME -r $CIRCLE_PROJECT_REPONAME --replace $VERSION "/home/ubuntu/Terminals/Terminals.Setup/Output/"

echo Uploads have been completed successfully.
