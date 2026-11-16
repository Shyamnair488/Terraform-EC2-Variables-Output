output "instance_id" {
  value = aws_instance.webserver[0].id
}

output "instance_public_ip" {
  value = aws_instance.webserver[0].public_ip
}

output "instance_connect_command" {
  value = "ssh -i <path_to_your_private_key> ec2-user@${aws_instance.webserver[0].public_ip}"
}