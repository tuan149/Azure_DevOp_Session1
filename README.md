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

**Part 1**

![Part 1](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/1.%20az%20policy%20definition.png?raw=true)
![Part 1](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/2.%20az%20policy%20assignment%20create.png?raw=true)
![Part 1](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/3.%20az%20policy%20assignment%20list.png?raw=true)

**Part 2**
![Part 2](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/4.%20packer%20build_1.png?raw=true)
![Part 2](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/4.%20packer%20build_2.png?raw=true)
![Part 2](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/5.%20myPackerImage.png?raw=true)

**Part 3**
![Part 3](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/6.%20terraform%20init.png?raw=true)
![Part 3](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/7.%20terraform%20plan_1.png?raw=true)
![Part 3](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/7.%20terraform%20plan_2.png?raw=true)
![Part 3](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/8.%20terraform%20apply_1.png?raw=true)
![Part 3](https://github.com/tuan149/Azure_DevOp_Session1/blob/master/Screen/8.%20terraform%20apply_2.png?raw=true)
