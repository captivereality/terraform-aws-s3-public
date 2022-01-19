

# Output variable definitions

output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "endpoint" {
    description = "Website endpoint for the bucket"
  value = aws_s3_bucket.bucket.website_endpoint
}