# chrony-graph

Create a website with useful information and graphs from chrony.

## Dependencies
Debian
```
sudo apt install bc python3 perl libdatetime-perl gnuplot-nox rsync fonts-liberation
```

## Installation
```
sudo ./install
```

## Configuration
```
# customize this file for your environment
/etc/chrony-graph/chrony-graph.conf
```

## Deployment
Point your webserver to the `./www` folder, which contains the full website.

## Output
By default output will be in `/var/log/syslog`.
A separate log file can be used by creating `/etc/rsyslog.d/30-chrony-graph.conf` containing:
```
if $programname == 'chrony-graph' then /var/log/chrony-graph.log
& stop
```
and then restart the rsyslog service:
```
sudo systemctl restart rsyslog
```
This log file can be rotated by creating `/etc/logrotate.d/chrony-graph` containing:
```
/var/log/chrony-graph.log
{
        rotate 14
        daily
        create
        missingok
        notifempty
        compress
        delaycompress
        postrotate
                /usr/lib/rsyslog/rsyslog-rotate
        endscript
}

```
