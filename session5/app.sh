#!/bin/bash
trap "exit" SIGINT
echo Configured to generate new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  /usr/games/fortune > /var/htdocs/index.html
  sleep $INTERVAL
done

# In development env, $INTERVAL=10
# In production env, $INTERVAL=25

# $DB_ENDPOINT
# $DB_USERNAME
# $DB_PASSWORD

# In development