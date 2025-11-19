data "aws_ami" "centos8"{
    owners  =   ["973714476881"]
    most_recent = true

        filter {
        name      = "name"
        values    =  ["Centos-8-DevOps-Practice"]
        }

        filter {
        name      = "root-device-type"
        values    =  ["ebs"]
        }

        filter {
        name      = "virtualization-type"
        values    =  ["hvm"]
        }
}

data "aws_ami" "aws-linux-2"{
    owners  =   ["amazon"]
    most_recent = true

        filter {
        name      = "name"
        values    =  ["al2023-ami-2023.9.20251117.1-kernel-*"]
        }

        filter {
        name      = "root-device-type"
        values    =  ["ebs"]
        }

        filter {
        name      = "virtualization-type"
        values    =  ["hvm"]
        }
}

data "aws_vpc" "default" {
    default = true
}