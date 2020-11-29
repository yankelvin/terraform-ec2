# Criação de uma rede privada que utilizamos na criação da subrede

resource "aws_vpc" "topicos2020" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Topicos2020"
  }
}

resource "aws_vpc" "custom" {

  # IP Range for the VPC
  cidr_block = "192.168.0.0/16"

  # Enabling automatic hostname assigning
  enable_dns_hostnames = true
  tags = {
    Name = "custom"
  }
}
