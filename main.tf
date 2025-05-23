provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "tomcat_server" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  security_groups = ["sgalltraffic"]  # Reference the existing security group
  key_name      = "mujahed"
  tags = {
    Name = "Tomcat-Server"
  }
}

output "tomcat_server_ip" {
  value = aws_instance.tomcat_server.public_ip
}

resource "aws_instance" "mysql_server" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  security_groups = ["sgalltraffic"]  # Reference the existing security group
  key_name      = "mujahed"
  tags = {
    Name = "mysql_server"
  }
}

output "mysql_server_ip" {
  value = aws_instance.mysql_server.public_ip
}
