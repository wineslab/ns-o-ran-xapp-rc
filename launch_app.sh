#!/bin/bash
#set -x 

export CHART_REPO_URL=http://0.0.0.0:8090

dms_cli uninstall rc  ricxapp

#docker build . -f Dockerfile -t 127.0.0.1:5000/rc:1.0.0 # --no-cache 

#docker push 127.0.0.1:5000/kpimon_master:1.0.0

dms_cli onboard xapp_descriptor/config.json xapp_descriptor/schema.json

dms_cli install rc 1.0.1 ricxapp

echo "Wait for 10 seconds"
sleep 10

unset $pod_name

pod_name=$(kubectl get pods -n ricxapp --no-headers -o custom-columns=":metadata.name")

echo kubectl exec -ti -n ricxapp $pod_name bash

# To run the kpimon
# ./kpimon -f /opt/ric/config/config-file.json
