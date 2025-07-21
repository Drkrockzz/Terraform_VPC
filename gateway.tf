resource "aws_internet_gateway" "app-pub-gateway" {
  vpc_id = aws_vpc.custom-vpc.id
  
  tags = {
    Name = "application test"
  }
}
/*
resource "aws_eip" "elastic-ip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "custom_nat" {
  allocation_id = aws_eip.elastic-ip.id
  subnet_id     = aws_subnet.custom-pub-subnet.id

  tags = {
    Name = "application NAT"
  }
}
*/