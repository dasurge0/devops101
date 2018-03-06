#!/bin/sh

curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
bash ./get_helm.sh --version v2.7.2
helm init

