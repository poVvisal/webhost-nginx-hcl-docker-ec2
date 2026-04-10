data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


resource "aws_key_pair" "developer_portfolio_key" {
  key_name   = var.key_name
  public_key = var.public_key
}


resource "aws_security_group" "web_server_sg" {
  name        = "web-server-sg"
  description = "Allow HTTP and SSH traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "developer_portfolio_server" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.developer_portfolio_key.key_name
  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
  }
 
  vpc_security_group_ids = [aws_security_group.web_server_sg.id]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "developer-portfolio-server"
  }
}

output "instance_public_ip" {
  value = aws_instance.developer_portfolio_server.public_ip
}
