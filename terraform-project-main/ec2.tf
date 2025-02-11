provider "aws" {
    region = "us-west-2"
    access_key = "Your Access Key"
    secret_key = "Your Secret Access Key"
  
}
resource "aws_instance" "web" {
    ami = "Your AMI id"
    instance_type = "t2.micro"
    tags = {
      Name : "Hello World"
    }
    key_name = "Your Key Name"
    security_groups = [ "$ your Group Name" ]
  
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow TLS Inbound traffic Rules"
  vpc_id      = "$ Your VPC ID"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
}

