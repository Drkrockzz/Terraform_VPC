resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.custom-vpc.id

  # since this is exactly the route AWS will create, the route will be adopted
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.app-pub-gateway.id
  }
  route {
    cidr_block = "42.36.22.0/24"
    gateway_id = "local"
  }
}
/*
resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.custom-vpc.id

  # since this is exactly the route AWS will create, the route will be adopted
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.custom_nat.id
  }
   route {
    cidr_block = "42.36.22.0/24"
    gateway_id = "local"
  }
}
*/

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.custom-pub-subnet.id
  route_table_id = aws_route_table.public_route.id
}
/*
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.custom-private-subnet.id
  route_table_id = aws_route_table.private_route.id
}
*/