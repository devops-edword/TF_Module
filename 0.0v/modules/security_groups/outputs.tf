## Output :: Security Group
output "sg-bastion-id" {
  value = aws_security_group.sg-bastion.id


}


output "sg-ans_con-id" {
  value = aws_security_group.sg-ans_con.id
}


output "sg-clb-id" {
  value = aws_security_group.sg-clb.id
}


output "sg-web-id" {
  value = aws_security_group.sg-web.id
}


output "sg-db-id" {
  value = aws_security_group.sg-db.id
}