# Criando o gateway para a VPC
resource "aws_internet_gateway" "Internet_Gateway" {
  depends_on = [
    aws_vpc.custom,
    aws_subnet.subnet_publica,
    aws_subnet.topicos2020
  ]

  # VPC in which it has to be created!
  vpc_id = aws_vpc.custom.id

  tags = {
    Name = "IG-Public-&-Private-VPC"
  }
}
