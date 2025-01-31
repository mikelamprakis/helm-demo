#!/bin/bash

# Define the chart name and path
CHART_NAME="my-app-chart"
CHART_PATH="my-app-chart/"

# Generate all yaml files
helm template my-app-chart my-app-chart/ > output.yaml

# Generate only the deployment.yaml file and save the output to deployment-output.yaml
helm template $CHART_NAME $CHART_PATH --show-only templates/deployment.yaml > deployment-output.yaml

echo "Deployment YAML has been generated and saved to deployment-output.yaml"