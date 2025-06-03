output "az1" {
  value = data.aws_availability_zones.az.names[0]
}

output "az3" {
  value = data.aws_availability_zones.az.names[2]
}





## Output :: AMI
output "anzn2023-id" {
  value = data.aws_ami.amzn2023.id
}

output "ubuntu2204-id" {
  value = data.aws_ami.ubuntu2204.id
}










### = Resource Block Output =
## Output :: VPC
output "vpc-id" {
  value = aws_vpc.vpc.id
}





## Output :: SUBNET
output "sub-pub01-id" {
  value = aws_subnet.sub-pub-01.id
}

output "sub-pub02-id" {
  value = aws_subnet.sub-pub-02.id
}


output "sub-pri01-id" {
  value = aws_subnet.sub-pri-01.id
}

output "sub-pri02-id" {
  value = aws_subnet.sub-pri-02.id
}





## Output :: R.T.B
output "rtb-pub-id" {
  value = aws_route_table.rtb-pub.id
}


output "rtb-pri01-id" {
  value = aws_route_table.rtb-pri-01.id
}

output "rtb-pri02-id" {
  value = aws_route_table.rtb-pri-02.id
}