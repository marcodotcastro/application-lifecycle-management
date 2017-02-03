#!/bin/sh
#

curl -v -H "Content-Type: application/xml" POST --data-binary "@projects.xml" -u admin:admin http://localhost:13000/projects.xml

curl -v -H "Content-Type: application/xml" POST --data-binary "@issue.xml" -u admin:admin http://localhost:13000/issues.xml
