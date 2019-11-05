#-----root/output.tf-------

# ----storage/outputs----
output "tf_bucket_name" {
  value = module.storage.bucket_name
}

#---Networking Outputs -----

output "public_subnets" {
  value = join(", ", module.networking.public_subnets)
}

output "subnet_ips" {
  value = join(", ", module.networking.subnet_ips)
}

output "public_sg" {
  value = module.networking.public_sg
}

#---Compute Outputs -----

output "server_id" {
  value = module.compute.server_id
}

output "server_ip" {
  value = module.compute.server_ip
}
