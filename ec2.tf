resource "aws_instance" "terraform_ec2" {
  ami                    = var.ami_id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
 
  associate_public_ip_address = true
 
  tags = {
    Name = "terraform-ec2"
  }
}
 