# UpCloud Terraform Setup Guide

This repository contains an example Terraform configuration for provisioning resources on [UpCloud](https://upcloud.com/). 

## Prerequisites
* [Terraform](https://developer.hashicorp.com/terraform/downloads) installed on your system.
* An UpCloud account.
* An UpCloud API subaccount (with "Allow API connections" enabled).

## ⚠️ Security Notice: The `terraform.tfvars` File
For security reasons, the `terraform.tfvars` file, which contains your sensitive API credentials, is included in the `.gitignore` file. **It is never committed to the repository.** 

Anyone cloning this repository must create their own local `terraform.tfvars` file to authenticate with UpCloud.

## Setup Instructions

### 1. Create your local variables file
In the root of this repository, create a file named `terraform.tfvars`:

```bash
# Linux/macOS
touch terraform.tfvars

# Windows (PowerShell)
New-Item terraform.tfvars -ItemType File
```

Open `terraform.tfvars` in your text editor and add your UpCloud API subaccount credentials:

```hcl
upcloud_username = "your_api_username_here"
upcloud_password = "your_api_password_here"
```

### 2. Initialize Terraform
Before running any Terraform commands, you must initialize the working directory. This downloads the necessary UpCloud provider plugins.

Run the following command in your terminal:
```bash
terraform init
```

### 3. Verify the Configuration (Plan)
To verify that your credentials are correct and see what Terraform will do without actually creating any resources, run a plan:

```bash
terraform plan
```
If your `terraform.tfvars` is set up correctly, Terraform will successfully authenticate and show you the execution plan. If you receive an `HTTP 401 Unauthorized` error, double-check your username and password.

### 4. Deploy Infrastructure (Apply)
When you are ready to provision the resources defined in the `.tf` files, apply the configuration:

```bash
terraform apply
```
Type `yes` when prompted to confirm the deployment.
