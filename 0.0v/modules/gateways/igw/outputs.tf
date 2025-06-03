## Output :: Ineternet Gateway
output "igw-id" {
  value = aws_internet_gateway.igw.id

  depends_on = [aws_internet_gateway.igw]
}