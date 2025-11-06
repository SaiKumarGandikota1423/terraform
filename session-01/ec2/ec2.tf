resource "aws_instance" "example" {
  ami           = ami-0b4f379183e5706b9 #Centos-8-DevOps-Practice-AMI
  instance_type = "t3.micro"

  tags = {
    Name = "HelloTerraform"
  }
}