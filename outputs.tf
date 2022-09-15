output "instance_id" {
    value       = aws_instance.tf-test.id
}

output "instance_arn" {
  value       = aws_instance.tf-test.arn
}

output "capacity_reservation_specification" {
  value       = aws_instance.tf-test.capacity_reservation_specification
}

output "instance_state" {
  value       = aws_instance.tf-test.instance_state
}

output "public_ip" {
  value       = aws_instance.tf-test.public_ip
}

output "private_ip" {
  value       = aws_instance.tf-test.private_ip
}