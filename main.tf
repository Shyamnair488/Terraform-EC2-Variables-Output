terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.73.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-096ef200a877f36af"
  instance_type = var.micro
  count         = 1

  tags = {
    Name = "WebServer"
  }
}