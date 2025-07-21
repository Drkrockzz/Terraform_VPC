resource "aws_vpc" "custom-vpc" {
  cidr_block = "42.36.22.0/24"
  enable_dns_hostnames = true
  tags ={
    name = "Application-test"
  }
}