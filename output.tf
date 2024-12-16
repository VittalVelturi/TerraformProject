output "VPC_ID" {
    value = module.networking.VPC_ID  
}
output "public_sub_t" {
    value =module.networking.public_sub_t  
}
output "private_sub_t" {
  value = module.networking.private_sub_t
}
output "route_table_id" {
    value = module.networking.route_table_id  
}
output "intergateway" {
    value = module.networking.intergateway
}
output "ec2_instance" {
    value = module.server.ec2_instance  
}
output "Public_ip" {
    value = module.server.Public_ip  
}
output "Private_ip" {
    value = module.server.Private_ip 
}

