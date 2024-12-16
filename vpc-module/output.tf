output "VPC_ID" {
    value = aws_vpc.vpc_t.id  
}
output "public_sub_t" {
    value =aws_subnet.public_sub_t.id  
}
output "private_sub_t" {
  value = aws_subnet.private_sub_t.id
}
output "route_table_id" {
    value = aws_route_table.public_route_t.id  
}
output "intergateway" {
    value = aws_internet_gateway.igw_t.id
}