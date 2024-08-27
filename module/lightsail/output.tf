output "public_ip" {
  value = aws_lightsail_instance.server1.public_ip_address
}

output "keypair" {
  value = aws_lightsail_instance.server1.key_pair_name
}