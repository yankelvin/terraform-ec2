# Diz qual provider vai ser necessário quando for subir o terraform, como só estamos
# utilizando as coisas da aws precisamos apenas colocar a fonte como hashicorp/aws
# conform documentação: https://registry.terraform.io/providers/hashicorp/aws/latest/docs

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configura o provider que escolhemos acima, precisamos passar o perfil e a região
# Também é possível passar apenas as chaves de acesso.
provider "aws" {
  profile = "souunit"
  region  = "us-east-1"
}
