terraform {
  required_version = "1.1.9"
  backend "local" {}
}

module "vpc" {
  source = "../modules/aws/vpc"
}

module "security_group" {
  source = "../modules/aws/security_group"

  vpc_id = module.vpc.vpc_id
}

module "subnet" {
  source = "../modules/aws/subnet"

  vpc_id = module.vpc.vpc_id
}


module "internet_gateway" {
  source = "../modules/aws/internet_gateway"

  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source = "../modules/aws/route_table"

  vpc_id = module.vpc.vpc_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
}

module "ec2" {
  source = "../modules/aws/ec2"

  security_group_id = module.security_group.security_group_id
  subnet_1_id = module.subnet.subnet_northeast_1a_id
}
