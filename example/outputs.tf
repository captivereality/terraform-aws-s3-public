# Output variable definitions

output "arn" {
  description = "ARN of the bucket"
  value       = module.s3-public.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = module.s3-public.name
}

output "endpoint" {
  description = "Website endpoint for the bucket"
  value = module.s3-public.endpoint
}