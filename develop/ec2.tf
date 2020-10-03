resource "aws_instance" "ec2" {
  depends_on = [aws_subnet.public_a]
  ami = "ami-0ce107ae7af2e92b5"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_a.id
  key_name = var.key_pair
  tags = {
    Name = "${var.env}-${var.project}-ec2"
  }
}

output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}
