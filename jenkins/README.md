## Jenkins Docker Container

Usage:
```
$ docker build -t jenkins .
$ docker run -d -p=:18080:8080 jenkins
```


Configuration:

sample job

private key
https://github.com/marcodotcastro/alm_docker/blob/master/jenkins/config/ssh-keys/cd-demo

sample project gitlab

public key
https://github.com/marcodotcastro/alm_docker/blob/master/jenkins/config/ssh-keys/cd-demo.pub