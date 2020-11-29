# Criando a associação da tabela de rotas

resource "aws_route_table_association" "RT-IG-Association" {

  depends_on = [
    aws_vpc.custom,
    aws_subnet.subnet_publica,
    aws_subnet.topicos2020,
    aws_route_table.Public-Subnet-RT
  ]

  # Public Subnet ID
  subnet_id = aws_subnet.subnet_publica.id

  #  Route Table ID
  route_table_id = aws_route_table.Public-Subnet-RT.id
}
