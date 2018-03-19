#!/bin/sh

cp -r ~/devops101/jenkins_jobs/* `kubectl -n spinnaker get pv -o jsonpath='{.items[?(@.spec.claimRef.name == "demo-jenkins")].spec.hostPath.path}'/jobs`

