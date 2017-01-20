## Redmine Docker Container

Usage:
```
$ docker build -t redmine .
$ docker run -d -p=3000:3000 redmine
```

Once Redmine is up and running go to http://localhost:3000


Integration

Gitlab

Docker

cd /opt/redmine/gitlab
sudo git clone --mirror http://localhost/root/sample.git
cd sample.git
git fetch -q --all -p

Cron

crontab -l

crontab -e
*/5 * * * * app cd /opt/redmine/gitlab && git fetch -q --all -p

tail -300f /var/log/syslog | grep CRON