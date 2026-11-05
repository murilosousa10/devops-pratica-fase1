terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configura o provedor de nuvem (AWS) e a região
provider "aws" {
  region = "us-east-1"
}

# Cria uma máquina virtual básica (EC2)
resource "aws_instance" "servidor_web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "Servidor-DevOps-Fase1"
  }
}
