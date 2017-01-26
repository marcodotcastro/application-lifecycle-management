## Redmine Docker Container

Usage:
```
$ docker build -t redmine .
$ docker run -d -p=3000:3000 redmine
```

Once Redmine is up and running go to http://localhost:3000


Integration

Gitlab

Docker Container Redmine
```
docker exec -it CONTAINER_ID /bin/bash
mkdir /usr/src/redmine/repository
cd /usr/src/redmine/repository
git clone --mirror http://gitlab/root/sample.git
cd sample.git
git fetch -q --all -p
```

Project
```
PROJECT > Configuration > Repository > New Repository
SCM: git
Identifier: gitlab-sample
Path to repository: /usr/src/redmine/repository/sample.git
```
```
Administration > Settings > Repositories
Referencing keywords: issue
Fixing keywords: Finalizada
Applied status: Fechada
Done: 100%
```
Cron

```
crontab -l
crontab -e
*/5 * * * * app cd /opt/redmine/gitlab && git fetch -q --all -p
tail -300f /var/log/syslog | grep CRON
```
