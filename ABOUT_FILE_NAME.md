> `main.tf` will contain the main set of configuration for your module. You can also create other configuration files and organize them however makes sense for your project.

> `variables.tf` will contain the variable definitions for your module. When your module is used by others, the variables will be configured as arguments in the module block. Since all Terraform values must be defined, any variables that are not given a default value will become required arguments. Variables with default values can also be provided as module arguments, overriding the default value.

> `outputs.tf` will contain the output definitions for your module. Module outputs are made available to the configuration using the module, so they are often used to pass information about the parts of your infrastructure defined by the module to other parts of your configuration.
> There are also some other files to be aware of, and ensure that you don't distribute them as part of your module:

> `terraform.tfstate` and terraform.tfstate.backup: These files contain your Terraform state, and are how Terraform keeps track of the relationship between your configuration and the infrastructure provisioned by it.

> `.terraform`: This directory contains the modules and plugins used to provision your infrastructure. These files are specific to a specific instance of Terraform when provisioning infrastructure, not the configuration of the infrastructure defined in .tf files.

> `*.tfvars`: Since module input variables are set via arguments to the module block in your configuration, you don't need to distribute any \*.tfvars files with your module, unless you are also using it as a standalone Terraform configuration.

`*tfvars`は`Composition`を使うとき以外は使用しない。`Composition`は`module`の`collection`であり、複数のアカウントやリージョンを跨ぐことができるような構成を作るもの。

ref. https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules
