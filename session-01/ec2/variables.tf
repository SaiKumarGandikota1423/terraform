variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-description" {
    type = string
    default = "Allow TLS inbound trsffic"
}


variable "inbound-from-port" {
    #tyhpe = string
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]


}