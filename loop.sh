#!/bin/bash

n=$1
for i in $(seq 1 1 $n); do
  kubectl scale deployment/dev-test --replicas=10
  kubectl wait deployment dev-test --for=jsonpath='{.status.readyReplicas}'=10
  kubectl scale deployment/dev-test --replicas=0
  sleep 2
  echo $i
done
