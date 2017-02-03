## Jenkins Docker Container

Configuration:

1 Job
1.1 Gitlab
```
Source Code Management > Git
Repositories
	Repository URL: git@gitlab:root/sample.git
	Credentials > Add > Jenkins > Kind > SSH Username with private key > Private Key > Enter directly
		Key: https://github.com/marcodotcastro/alm_docker/blob/master/jenkins/config/ssh-keys/cd-demo
Branches to build
	Branch Specifier (blank for 'any'): */master
Repository browser: gitlab
	URL: http://gitlab/root/sample
	Version: 3.1
```
1.2 Sonar
```
Post-build Actions > SonarQube analysis with Maven
JDK: JDK 8
Maven Version: Maven 3.3.3
Root POM: pom.xml
```
1.3 Tomcat
```
Post-build Actions > Deploy war/ear to a container
WAR/EAR files: target/sample.war
Container > Tomcat 7.x
Manager user name: admin
Manager password: abc12345
Tomcat URL: http://tomcat:8080
```
2 Jenkins

2.1 Gitlab
```
Manage Jenkins > Configure System > Gitlab > GitLab connections
Connection name: gitlab
Gitlab host URL: http://gitlab/
Credentials > Add > Jenkins > Kind > GitLab API token
API Token: fbUVXAPjsny3DAHqz7_-
```
2.2 Sonar

Manage Jenkins > Configure System > SonarQube servers > SonarQube installations
```
Name: sonar
Server URL: http://sonar:9000
Server version: 5.3 or Higher
Server authentication token: 4.1
```
3 Gitlab

3.1 Public Key
```
PROJECT_NAME > Configurations > Deploy Keys
https://github.com/marcodotcastro/alm_docker/blob/master/jenkins/config/ssh-keys/cd-demo.pub
```

4 Sonar

4.1 Generate Token User Admin
```
Security > User > USER_NAME > Tokens
```
