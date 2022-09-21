variable "region" {
  type              = string
  default           = "us-east-1"
  description       = "teraform test"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  description = "terraform test"
}

variable "db_password" {
  type = string
  default = "asdf1234!"
  description = "terraform test"
  
}