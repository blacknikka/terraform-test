output "vpc_main" {
  value = aws_vpc.main
}

output "igw_igw" {
  value = aws_internet_gateway.igw
}
