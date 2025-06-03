## Output :: KEY PAIR
output "key-bastion-id" {
  value = aws_key_pair.key-pair-bastion.id
}


output "key-web-id" {
  value = aws_key_pair.key-pair-web.id
}


output "key-db-id" {
  value = aws_key_pair.key-pair-db.id
}


output "key-ans_con-id" {
  value = aws_key_pair.key-pair-ans_con.id
}