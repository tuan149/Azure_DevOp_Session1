# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
**Part 1: Deploy policy**

Definition policy:

`az policy definition create --name {policyName} --description {policyDescription} --rule {file-json-path}`

Then assignment policy:

`az policy assignment create --name {nameAssignment} --policy {policyName}`

**Part 2: Packer**

Modify client_id, client_secret and subscription_id in server.json

Build packer: `packer build server.json`

**Part 3: Terraform**

Open file `vars.tf` and change group name, location, username, password,...

Initializes a directory Terraform:

`terraform init`

Deploy Terraform:

`terraform plan -out solution.plan`

`terraform apply`

### Output

**Part 1 output**

![Part 1](/screenshot/01.%20az%20policy%20definition%20create.png)
![Part 1](/screenshot/02.%20az%20policy%20assignment%20create.png)

**Part 4 output**

Packer

![packer](/screenshot/04.packer%20build.png)

Terraform

![Terraform](/screenshot/06.%20terraform%20apply.png)