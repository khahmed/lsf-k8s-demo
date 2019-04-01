#!/bin/bash
kubectl -n proj-2 create -f pi-job-lowpri.yaml
sleep 600
kubectl -n proj-1 create -f pi-job-hipri.yaml
