resource "aws_instance" "amazon" {
  count = 1

  ami           = var.ami_free_amazon
  instance_type = var.instance_type_free

  key_name = var.key_name

  subnet_id              = var.public_subnet[0]
  vpc_security_group_ids = [var.security_group["sg_linux"]]

  tags = {
    Name = "B2111933 Amazon Linux"
  }
}

resource "aws_instance" "ubuntu" {
  count = 1

  ami           = var.ami_free_ubuntu
  instance_type = var.instance_type_free

  key_name = var.key_name

  subnet_id              = var.public_subnet[1]
  vpc_security_group_ids = [var.security_group["sg_linux"]]

  tags = {
    Name = "B2111933 Ubuntu"
  }
}

resource "aws_instance" "windows" {
  count = 1

  ami           = var.ami_free_windows
  instance_type = var.instance_type_free

  key_name = var.key_name

  subnet_id              = var.public_subnet[2]
  vpc_security_group_ids = [var.security_group["sg_windows"]]

  tags = {
    Name = "B2111933 Windows"
  }
}
