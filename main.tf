#The networking module contains the creation of the respective resources in AWS VPC, Subnets, Internetgateway, Route tables
module networking{
    source = "./vpc-module"
}

# The Server module contains the creation of Ec2 instance and Security groups.
module "server" {
    source = "./server-mod"
    publicsubnet = module.networking.public_sub_t
    vpc = module.networking.VPC_ID
}

