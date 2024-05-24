resource "aws_instance" "server1" {
  ami = ""
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.sg1.id ]
  availability_zone = "us-east-1a"
  subnet_id = aws_subnet.private1.id
  user_data = file("code.sh")
  tags = {
    Name = "webserver-1"
  }

}
resource "aws_instance" "server2" {
  ami = "ami-0d94353f7bad10668"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.sg1.id ]
  availability_zone = "us-east-1b"
  subnet_id = aws_subnet.private1.id
  user_data = file("code.sh")
  tags = {
    Name = "webserver-2"
  }

}


