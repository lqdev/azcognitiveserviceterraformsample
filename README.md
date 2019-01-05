# Azure Cognitive Service Terraform Sample

This is a sample application that shows how to write a Terraform configuration script to provision a Computer Vision Cognitive Service resource in Azure. A more detailed walk-through is provided in this blog [post](http://luisquintanilla.me/2019/01/05/automate-machine-learning-service-provisioning-azure-terraform/).

## Requirements

This project was built using a PC running Ubuntu 18.04 but works on both Windows and Mac.

- [Azure Account](https://azure.microsoft.com/en-us/free/)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
- [Terraform CLI](https://www.terraform.io/downloads.html)

## Usage

## Log Into Azure

To authenticate with Azure via Azure CLI enter the command below into the terminal and follow the prompts.

```bash
az login
```

### Download plugins

To download necessary plugins enter into the terminal:

```bash
terraform init
```

### Provision Resources

To provision the resources described in the configuration file, enter into the terminal:

```bash
terraform apply
```

If satisfied with provisioning plan, type `yes` into the terminal.