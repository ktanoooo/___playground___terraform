output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "subnet_northeast_1a_id" {
  value = aws_subnet.subnet_northeast_1a.id
}
output "subnet_northeast_1c_id" {
  value = aws_subnet.subnet_northeast_1c.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.internet_gateway.id
}
