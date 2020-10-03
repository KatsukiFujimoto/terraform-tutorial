variable "access_key" {}
variable "secret_key" {}

variable "project" {
  type    = string
  default = "terraform-ec2"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "vpc_cidr" {
  type = map(string)

  default = {
    prd = "10.1.0.0/16"
    dev = "10.2.0.0/16"
  }
}

variable "subnet_cidr" {
  type = map(string)

  default = {
    prd_public_a = "10.1.1.0/24"
    dev_public_a = "10.2.1.0/24"
  }
}

variable "key_pair" {
  type    = string
  default = "aws-tutorial"
}

variable "az" {
  type = map(string)

  default = {
    az_a = "ap-northeast-1a"
    az_c = "ap-northeast-1c"
    az_d = "ap-northeast-1d"
  }
}
