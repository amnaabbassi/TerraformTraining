# Terraform exercice

Here is a quick exercice to discover Terraform how it works

## Installation

- Add the terraform binary into our PATH
- Install az cli
- Login to your az account using `az login`
- Create an azure subscription if you don't have any

## Configure your first terraform code!

Here the goal is to init your terraform directory.

1. Create a `_settings.tf` file
2. Create your terraform block and init the azurerm provider. [Here is the doc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
3. Do your first `terraform init` ! 
4. Check the content of the `.terraform` folder to understand what does `terraform init`. [Here is the doc](https://developer.hashicorp.com/terraform/cli/commands/init)

## Create a storage account

Now you will create your first resource in azure! [Here is a useful tips](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs) 

1. Create a new resource group
2. Create a new storage account
3. Let's check out if your terraform code is valid. To do so use `terraform validate`
4. Now that your code is valid check out what will be create with your code: `terraform plan`
5. If your sure of what is previously output you can now create it using: `terraform apply`
6. Update the name argument of the storage account and update your resource using: `terraform plan` follow by a `terraform apply` 

## Let's understand the terraform state

One of the driving force of terraform is the usage of a `state`. The state contains the actual state of the infrastructure.
Each time you will try to compare your code or update your infrastructure using `terraform plan` or `terraform apply` terraform will first refresh the state.
To refresh a state there also is a command you can use: `terraform refresh`

With the state come some specification for example to rename a resource you need to move it in the state.
Here is an example: `terraform state mv azurerm_resource_group.example azurerm_resource_group.test` 

Let's try it!

1. Rename previously create storage account resource. Don't modify the name argument but the resource name!
2. Use terraform plan to check what will happen!
3. Fix the state using a terraform state mv!
4. Let's check if everything is good with a new `terraform plan`

## Clean up 

The best part of using IAC (Infra As Code) is that all your infra is managed by code! 
It may seems obvious but you can now easily destroy everything!!

To do so you can use the following command:

1. `terraform destroy`

You can also:

1. Comment or delete all the code corresponding to your resources
2. `terraform apply`
