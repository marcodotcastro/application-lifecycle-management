#!/bin/sh
#

PRIVATE_TOKEN=`curl http://138.197.75.87:10080/api/v3/session --data 'login=root&password=abc12345' | jq -r '.private_token'` && curl -H "Content-Type:application/json" http://138.197.75.87:10080/api/v3/projects?private_token=$PRIVATE_TOKEN -d "{ \"name\": \"sample\" }"

git clone http://138.197.75.87:10080/root/sample.git
cd sample
cp -R ../my_sample/* .
git add .
git commit -m "first commit"
git push -u origin master
