output "instance-id" {
  value = aws_instance.instance.id
}


output "public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.instance.public_ip
}


output "private_ip" {
  description = "Private IP address of the instance"
  value       = aws_instance.instance.private_ip
}