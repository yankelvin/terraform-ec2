# Aqui criamos uma subrede onde todas as máquinas estarão apontando, todas no mesmo range

# Criando uma subrede publica
resource "aws_subnet" "subnet_publica" {
  depends_on = [
    aws_vpc.custom
  ]

  # VPC na qual a subrede será criada
  vpc_id = aws_vpc.custom.id

  # Range de IP para a subrede
  cidr_block = "192.168.0.0/24"

  # Data Center da subrede
  availability_zone = "us-east-1a"

  # Ativando IP público automático no início da instância
  map_public_ip_on_launch = true

  tags = {
    Name = "Subrede Pública"
  }
}

resource "aws_subnet" "topicos2020" {
  depends_on = [
    aws_vpc.custom,
    aws_subnet.subnet_publica
  ]

  vpc_id     = aws_vpc.custom.id
  cidr_block = "192.168.1.0/24"

  availability_zone = "us-east-1b"

  tags = {
    Name = "Subrede Privada"
  }
}
