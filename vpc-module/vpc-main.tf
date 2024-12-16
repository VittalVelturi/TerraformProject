# Creating of VPC
resource "aws_vpc" "vpc_t" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "vpc_t"
  }
}

# Creation of private Subnet
resource "aws_subnet" "private_sub_t" {
  vpc_id = aws_vpc.vpc_t.id
  cidr_block = var.private_cidrblock
  availability_zone = var.private_az
  tags = {
    Name= "private_sub_t"
  }
}

# Creation of public Subnet
resource "aws_subnet" "public_sub_t" {
  vpc_id = aws_vpc.vpc_t.id
  cidr_block = var.public_cidrblock
  availability_zone = var.public_az
  tags = {
    Name = "public_sub_t"
  }
}

# Creation of intergateway to VPC
resource "aws_internet_gateway" "igw_t" {
    vpc_id = aws_vpc.vpc_t.id

    tags={
        Name="igw_t"
    } 
}

# Creation of route table
resource "aws_route_table" "public_route_t" {
  vpc_id = aws_vpc.vpc_t.id

  route{
    gateway_id = aws_internet_gateway.igw_t.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name= "public_route_t"
  }
}

# Association of route table to subnet

resource "aws_route_table_association" "aws_rt_association_t" {
    subnet_id = aws_subnet.public_sub_t.id
    route_table_id = aws_route_table.public_route_t.id
}


