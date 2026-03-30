output "ec2_public_ip" {
  value = module.ec2.public_ip
}
output "s3_website_url" {
  value = module.s3.website_url
}
