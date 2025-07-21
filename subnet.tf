resource "aws_subnet" "custom-pub-subnet" {
    vpc_id = aws_vpc.custom-vpc.id
    cidr_block = "42.36.22.64/26"
    map_public_ip_on_launch = true
    tags = {
        name = "Application-test"
    }
}

resource "aws_subnet" "custom-private-subnet" {
    vpc_id = aws_vpc.custom-vpc.id
    cidr_block = "42.36.22.128/26"
    map_public_ip_on_launch = false
    tags = {
        name = "Application-test"
    }
}