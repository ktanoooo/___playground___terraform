# terraform_playground

file name role

`(provider)_(resource)_(target).tf`

# Prerequisites

Use the workspace on Terraform Cloud.

## Version

This project use v1.1.19 of terraform.

```
terraform -v
> Terraform v1.1.9
```

# Commands

## Configuration

```
terraform init

## Check

```

terraform plan
terraform plan -var 'instance_name=ChangeName'

```

## Create resources

```

trraform apply -> yes

```

## Destroy resources

```

terraform destory -> yes

```

## Output

```

terraform output
terraform output instance_id

```

## Terraform Cloud

https://learn.hashicorp.com/tutorials/terraform/aws-remote?in=terraform/aws-get-started

First of all, Create credential key in `~/.terraform.d/*`.

```

terraform login

# When a `terraform.tfstate` file exists

rm terraform.tfstate

```

Set `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` in WorkSpace variables.
```


# Thanks

`.gitignore`: https://github.com/github/gitignore/blob/main/Terraform.gitignore