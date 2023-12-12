#!/bin/bash

# Step 1: Download Kubeconfig
# 1. Open a terminal on your local machine.
# 2. Use the following command to download the kubeconfig file for your namespace:
wget https://raw.githubusercontent.com/RobssR/Mon1/main/Monitoring-Acad-kubeconfig.yaml

# 3. Then use this command to use context in the yaml file when using kubectl
export KUBECONFIG=~/Downloads/Monitoring-Acad-kubeconfig.yaml

# 4. Confirm that the kubeconfig.yaml file has been successfully exported and usable.
kubectl get namespaces

# Step 2: Check Prometheus Pods
# 1. Ensure that you have the kubectl command-line tool installed on your machine.
# 2. Use the following command to list all the pods/deployment in your namespace:
kubectl get pods -n <YOUR NAMESPACE>

# 3. Identify the Prometheus pods in the list. Note the pod names for reference.

# Step 3: Access Prometheus UI
# 1. Open a web browser and navigate to the Prometheus UI using the following format:
# arduinoCopy code
# http://<your-initials>-prom.acad.opswerks.net
# Replace <your-initials> with your actual initials (e.g., dlogpit). http://dlogpit-prom.acad.opswerks.net

# 2. You will be prompted to enter your credentials. Use the provided login credentials to access the Prometheus UI.

# Step 4: Getting Familiar with the Prometheus UI

# Once logged in, explore the Prometheus UI to monitor metrics and performance data.

# Familiarize yourself with the available tabs and features such as Graph, Alerts, Status, and Targets.

# Use the query language to retrieve specific metrics by entering expressions in the "Expression" input box.

# Experiment with different queries and visualizations to understand the capabilities of Prometheus.