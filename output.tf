# Output to display the public IP address of the created EC2 instance
output "public_ip" {
  value       = aws_instance.my_server.public_ip
  description = "The public IP address of the EC2 instance"
}

# Output to display the private IP addresses of all created EC2 instances
# The [*] syntax allows for multiple instances if count or for_each is used
output "instance_ip_addr" {
  value = aws_instance.my_server[*].private_ip
}