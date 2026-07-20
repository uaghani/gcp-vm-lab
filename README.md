# GCP VM Lab — Terraform + GitHub Codespaces

Creates 5 `e2-micro` VMs on Google Cloud using Terraform, run from a GitHub Codespace.

## Run it (inside the Codespace)

```bash
# 1. Authenticate to GCP (follow the browser link, paste code back)
gcloud auth login --no-launch-browser
gcloud auth application-default login --no-launch-browser

# 2. Point at your project and enable the Compute API
gcloud config set project YOUR_PROJECT_ID
gcloud services enable compute.googleapis.com

# 3. Configure Terraform variables
cp terraform.tfvars.example terraform.tfvars
# edit terraform.tfvars and set your project_id

# 4. Terraform workflow
terraform init
terraform plan
terraform apply

# 5. When done — IMPORTANT, avoids charges
terraform destroy
```

## Cost note

Only **one** e2-micro (in us-central1/us-west1/us-east1) is covered by GCP's
always-free tier. Five of them cost roughly $0.05/hour total — fine for a lab
session, but run `terraform destroy` when you're done.
