# GKE Example

This example demonstrates how to create a GKE cluster, deploy a simple Flask application, and load test it.

## Prerequisites

* Google Cloud SDK
* Docker
* Kubectl

## Steps

1. **Create the cluster:** `./create_cluster.sh`
2. **Deploy the application:** `./deploy_app.sh`
3. **Load test the application:** `./load_test.sh`

**Note:**  You will need to have a Google Cloud project configured and authenticated with the `gcloud` command-line tool.  You may also need to enable the Kubernetes Engine API.  The `[PROJECT_ID]` placeholder in `deployment.yaml` is automatically replaced by your current project ID during deployment.  Ensure you have Docker installed and running.  You'll also need `kubectl` configured to connect to your cluster.

The load test uses `ab` (Apache Benchmark).  You may need to install it separately (e.g., `sudo apt-get install apache2-utils`).
