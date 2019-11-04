#-----root/output.tf-------

output "tf_bucket_name" {
  value = module.storage.bucket_name
}
