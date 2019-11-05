provider "aws" {
  region = var.aws_region
}

module "storage" {
  source       = "./storage"
  project_name = var.project_name
}

module "networking" {
  source       = "./networking"
  vpc_cidr     = var.vpc_cidr
  public_cidrs = var.public_cidrs
  access_ip    = var.access_ip
}

module "compute" {
  source          = "./compute"
  instance_count  = var.instance_count
  key_name        = var.key_name
  public_key_path = var.public_key_path
  instance_type   = var.server_instance_type
  subnets         = module.networking.public_subnets
  security_group  = module.networking.public_sg
  subnet_ips      = module.networking.subnet_ips
}
