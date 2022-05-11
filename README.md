# Version

This project use v1.1.19 of terraform.

```
terraform -v
> Terraform v1.1.9
```

# Usage

```
cd environments/development
terraform init
terraform plan
...
```

# Commands

## Configuration

```
terraform init
```
## Check

```
terraform plan
terraform plan -var 'instance_name=ChangeName'
```
## Create resources

```
trraform apply
-> yes
```
## Destroy resources

```
terraform destory
-> yes
```
## Output

```
terraform output
terraform output instance_id
```

# Terraform Cloud

https://learn.hashicorp.com/tutorials/terraform/aws-remote?in=terraform/aws-get-started

First of all, Create credential key in `~/.terraform.d/*`.

```
terraform login

# When a `terraform.tfstate` file exists
rm terraform.tfstate
```

Set `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` in WorkSpace variables.

# References

Thanks

- https://github.com/zoo200/blog
- https://github.com/knakayama/aws-terraform-playground

- `.gitignore`: https://github.com/github/gitignore/blob/main/Terraform.gitignore

```
curl https://raw.githubusercontent.com/github/gitignore/main/Terraform.gitignore > .gitignore
```