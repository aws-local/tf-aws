variable "aws_region" {}
variable "project_name" {}
variable "access_ip" {}
variable "vpc_cidr" {}
variable "public_cidrs" { type = "list" }
variable "key_name" {}
variable "public_key_path" {}
variable "server_instance_type" {}
variable "instance_count" {
  default = 1
}

