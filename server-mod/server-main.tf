# Creation of Security groups
resource "aws_security_group" "sg_t" {
    name = "security_group_terraform"
    description = "This determines the security group for ec2 server"
    vpc_id = var.vpc

    #Inbound Rules
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    #Oubound Rules
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags ={
        Name="sg_t"
    }  
}


# Creation of EC2 Instance
resource "aws_instance" "terraform_t" {
 ami= data.aws_ami.ami_terra.id
 instance_type = var.instance
 subnet_id = var.publicsubnet
 vpc_security_group_ids = [ aws_security_group.sg_t.id ]
 key_name = var.keyname
#  associate_public_ip_address = var.autoassign_public_ip

 root_block_device {
    volume_type           = "gp3"
    volume_size           = 10
    delete_on_termination = true
  }
 tags = {
   Name="teraform_t"
 }
}