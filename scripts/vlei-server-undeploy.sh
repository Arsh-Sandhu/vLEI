#!/bin/bash

# KUBE_CONFIG=~/.gleif/kubeconfig.yaml
KUBE_CONFIG=~/.kube/config

if [[ ! -f $KUBE_CONFIG ]] ; then
    echo "kube config file "${KUBE_CONFIG}" must exist."
    echo "exiting"
    exit
fi

helm uninstall vlei-server --namespace gleif-vlei-server-pilot

