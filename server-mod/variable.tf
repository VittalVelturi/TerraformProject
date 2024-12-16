variable "instance" {
    description = "This is the instance_type of Ec2 Server"
    type = string
    default = "t2.micro"  
}

variable "publicsubnet" {
    description = "This value is been obtained form vpc module"
    type = string
}
variable "vpc" {
    description = "This value is been obtained from vpc module"
    type = string  
}
variable "keyname" {
    description = "This determines keypair for the ec2 instance"
    type = string
    default = "AWSLinuxKeyppk"
  
}
variable "autoassign_public_ip" {
    description = "This conveys whether to autoassign public ip to enable it or not"
    type = bool
    default = true
}