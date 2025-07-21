resource "aws_instance" "nginx_pub" {
  ami = "ami-0d03cb826412c6b0f"
  instance_type = "t2.micro"
  subnet_id =  aws_subnet.custom-pub-subnet.id
  user_data = file("userdata.sh")
  security_groups = [ aws_security_group.custom-vpc-sg.id ]
  key_name = "mumbai_key"
  tags = {
    name = "nginx"
  }
}


/*
resource "aws_instance" "nginx_private" {
  ami = "ami-0d03cb826412c6b0f"
  instance_type = "t2.micro"
  subnet_id =  aws_subnet.custom-private-subnet.id
  security_groups = [ aws_security_group.custom-vpc-sg.id ]
  key_name = "mumbai_key"
  tags = {
    name = "nginx"
  }
}
*/