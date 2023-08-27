# Security Groups

resource "aws_security_group" "sg_common" {
  name = "common-ports"
  vpc_id      = aws_vpc.jenkins_vpc.id
  tags = { 
    Name = "common ports"
  }
  
  ingress {
    description = "Allow SSH"
    protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    protocol = "tcp"
    from_port = 80
    to_port = 80 
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTPS"
    protocol = "tcp"
    from_port = 443
    to_port = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "jenkins_ui_allow" {
  name = "jenkins UI"
  vpc_id      = aws_vpc.jenkins_vpc.id
  tags = { 
    Name = "Jenkins UI"
  }
  
  ingress {
    description = "Allow Jenkins UI"
    protocol = "tcp"
    from_port = 8080
    to_port = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }

}
