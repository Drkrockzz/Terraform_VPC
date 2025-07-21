resource "aws_security_group" "custom-vpc-sg" {
  name        = "custom-vpc-sg"
  vpc_id      = aws_vpc.custom-vpc.id
  tags = {
    Name = "example"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh-http-ICMP" {
  security_group_id = aws_security_group.custom-vpc-sg.id
  cidr_ipv4   = "0.0.0.0/0"
  for_each=tomap({
    "tcp" = "22",
    "ICMP" = "-1"
})
  from_port   = each.value
  ip_protocol = each.key
  to_port     = each.value
}


resource "aws_vpc_security_group_egress_rule" "egress" {
  security_group_id = aws_security_group.custom-vpc-sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 0
  ip_protocol = -1
  to_port     = 0
}