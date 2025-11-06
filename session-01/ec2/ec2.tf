resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9" #Centos-8-DevOps-Practice-AMI
  instance_type = "t2.micro"

  tags = {
    Name = "HelloTerraform"
  }
}


#resource "aws_security_group" "roiboshop-all" { #this is terraform name, for terraform reference only
 # name          = "roboshop-all"
  #description   = "Allow TLS inbound traffic"
  #vpc_id        = aws_vpc.main.id

#}

resource "aws_security_group" "allow_tls" {
  name        = "roboshop-all"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}