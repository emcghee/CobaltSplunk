#!/bin/bash

if [ $# -lt 3 ]; then
	echo "[!] Usage: ./install-forwarder.sh <Splunk Server IP> <CS Folder Path> <Forwarder Name>"
	exit 1
fi

SERVER="$1"
PATH="$2"
HOSTNAME="$3"

# sudo dpkg -i splunkforwarder-8.2.1-ddff1c41e5cf-linux-2.6-amd64.deb 

# sudo /opt/splunkforwarder/bin/splunk set servername $HOSTNAME
# sudo /opt/splunkforwarder/bin/splunk set default-hostname $HOSTNAME

# sudo /opt/splunkforwarder/bin/splunk enable boot-start
# sudo /opt/splunkforwarder/bin/splunk add forward-server $SERVER:9997
# sudo /opt/splunkforwarder/bin/splunk start
# sudo /opt/splunkforwarder/bin/splunk add monitor /var/log/auth.log -index ssh -sourcetype %APP%
# sudo /opt/splunkforwarder/bin/splunk add monitor $PATH/.../weblog_*.log -index cobalt -sourcetype weblog
# sudo /opt/splunkforwarder/bin/splunk add monitor $PATH/.../beacon_*.log -index cobalt -sourcetype beacon_log
# sudo /opt/splunkforwarder/bin/splunk add monitor $PATH/.../keystrokes_* -index cobalt -sourcetype keystrokes
# sudo /opt/splunkforwarder/bin/splunk add monitor $PATH/.../events.log -index cobalt -sourcetype teamserver_events
# sudo /opt/splunkforwarder/bin/splunk add monitor $PATH/.../screenshots.log -index cobalt -sourcetype screenshots
