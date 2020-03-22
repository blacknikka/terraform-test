output "vpc_main" {
  value = aws_vpc.main
}

output "subnet_private" {
  value = aws_subnet.private_a
}
