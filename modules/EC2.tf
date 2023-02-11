resource "aws_instance" "app" {

  ami = var.image_id
  instance_type = var.instance_type
  security_groups = [ aws_security_group.appsg.id ]
  key_name = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  user_data = "${file(var.user_data)}"
  subnet_id = aws_subnet.appsubnet.id
  
  tags = {
    Name = "php-app"
  }
}



