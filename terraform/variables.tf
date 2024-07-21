variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "backet_name" {
  type    = string
  default = "terraform-state-bucket-github-akh "
}

variable "ami_id" {
  type    = string
  default = "ami-02a405b3302affc24"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}