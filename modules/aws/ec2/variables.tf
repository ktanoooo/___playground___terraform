variable "service" {
  type        = string
  default     = "service_name"
  description = ""
}

# Map for regions
variable "images" {
  default = {
    us-east-1 = "ami-1ecae776"
    us-west-2 = "ami-e7527ed7"
    us-west-1 = "ami-d114f295"
    eu-west-1 = "ami-a10897d6"
    eu-central-1 = "ami-a8221fb5"
    ap-southeast-1 = "ami-68d8e93a"
    ap-southeast-2 = "ami-fd9cecc7"
    ap-northeast-1 = "ami-cbf90ecb"
    sa-east-1 = "ami-b52890a8"
  }
  description = "Amazon Machine Image by region"
}

variable "security_group_id" {
  type        = string
  description = ""
}

variable "subnet_1_id" {
  type        = string
  description = ""
}