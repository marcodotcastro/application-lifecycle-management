# CI Tools Demo

Clone Repository

```
git clone git@github.com:marcelbirkner/docker-ci-tool-stack.git

cd docker-ci-tool-stack
```

# Getting started

```
docker-compose up
```

## Access Tools

#### Only ALM

| *Tool* | *Link* | *Credentials* |
| ------------- | ------------- | ------------- |
| Redmine | http://${docker-machine ip default}:13000/ | admin/admin |
| Jenkins | http://${docker-machine ip default}:18080/ | no login required |
| SonarQube | http://${docker-machine ip default}:19000/ | admin/admin |
| Nexus | http://${docker-machine ip default}:18081/nexus | admin/admin123 |
| GitLab | http://${docker-machine ip default}/10080 | no login required |

#### With APP

| *Tool* | *Link* | *Credentials* |
| ------------- | ------------- | ------------- |
| Redmine | http://${docker-machine ip default}:13000/ | admin/admin |
| Jenkins | http://${docker-machine ip default}:18080/ | no login required |
| SonarQube | http://${docker-machine ip default}:19000/ | admin/admin |
| Nexus | http://${docker-machine ip default}:18081/nexus | admin/admin123 |
| GitLab | http://${docker-machine ip default}/10080 | no login required |
| Tomcat | http://${docker-machine ip default}:18888/ | admin/admin |
| App Java | http://${docker-machine ip default}:18888/sample | admin/admin |



## Docker command
#### Containers
##### Stop all
```
docker stop $(docker ps -a -q)
```
##### Remove all
```
docker rm $(docker ps -a -q)
```
#### Images
##### Remove all
```
docker rmi $(docker images -q)
```
