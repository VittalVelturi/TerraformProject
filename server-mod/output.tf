output "ec2_instance" {
    value = aws_instance.terraform_t.id  
}
output "Public_ip" {
    value = aws_instance.terraform_t.public_ip  
}
output "Private_ip" {
    value = aws_instance.terraform_t.private_ip 
}

