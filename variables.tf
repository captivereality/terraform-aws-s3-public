# Input variable definitions

variable "region" {
  description   = "AWS S3 Region"
  default       = "eu-west-2"
  type          = string
}

variable "profile" {
  description   = "AWS profile (must be valid in .aws)"
  default       = ""
  type          = string
}

variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}