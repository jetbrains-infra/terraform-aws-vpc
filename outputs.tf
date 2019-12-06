output "id" {
  value = aws_vpc.default.id
}

output "default_route_table_id" {
  value = aws_vpc.default.default_route_table_id
}

output "default_security_group_id" {
  value = aws_vpc.default.default_security_group_id
}
