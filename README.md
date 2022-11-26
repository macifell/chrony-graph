# chrony-graph

This is for graphing logs from chrony.

## Dependencies
```
sudo apt install libdatetime-perl gnuplot bc fonts-liberation
```

## Configuration
```
sudo mkdir -p /etc/chrony-graph/
cp ./chrony-graph.sample.conf /etc/chrony-graph/chrony-graph.conf
# customize this file for your environment
```

## Installation
```
sudo ./install
```

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
