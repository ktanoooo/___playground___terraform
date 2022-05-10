#
# aws_instance
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
#
resource "aws_instance" "web" {
  ami           = var.images["ap-northeast-1"]
  instance_type = "t2.micro"

  vpc_security_group_ids = [var.security_group_id]

  subnet_id = var.subnet_1_id
  associate_public_ip_address = "true"

  tags = {
    Name = "${var.service}-instance"
  }
}
