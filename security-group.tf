# Criando security group
resource "aws_security_group" "acesso-ssh-us-east-2" {
  name        = "acesso-ssh-us-east-2"
  description = "acesso-ssh"
 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cdirs_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}

# Criando security group
resource "aws_security_group" "acesso-ssh-us-east-1" {
  provider = aws.us-east-1
  name        = "acesso-ssh-us-east-1"
  description = "acesso-ssh"
 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cdirs_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}