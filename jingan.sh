#!/bin/sh
apt-get update -y
COUNTER=50
until [  $COUNTER -lt 10 ]; do
TOKEN="d5893ead76e8ca42d4438d14be4fce2836f5f74d817b302530" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
timeout 288m ~/.buildkite-agent/bin/buildkite-agent start
echo "yohoho"

     echo COUNTER $COUNTER
     let COUNTER-=1
done
