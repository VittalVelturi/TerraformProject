variable "vpc_cidr_block" {
    description = "This is the cidr block for VPC"
    type = string
    default = "162.10.0.0/16"  
}

variable "private_cidrblock" {
  description = "This is the cidr block for Private Subnet"
  type = string
  default = "162.10.0.0/24"
}

variable "private_az" {
  description = "This determines the available zone of private subnet"
  type = string
  default = "ap-south-1a"
}

variable "public_cidrblock" {
  description = "This is the cidr block for Private Subnet"
  type = string
  default = "162.10.1.0/24"
}

variable "public_az" {
  description = "This determines the available zone of private subnet"
  type = string
  default = "ap-south-1b"
}
