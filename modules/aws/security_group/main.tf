#
# aws_security_group
#   * https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_security_group
#
resource "aws_security_group" "security_group" {
  name = "security_group"
  description = "allow http and ssh from anyware"

  vpc_id = var.vpc_id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.service}-security-group"
  }
}
