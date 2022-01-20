# Tarraform AWS S3 Public Website Movule

Terraform module which creates an S3 bucket adds an HTML file and gives the bucket full public access and returns the URL of the website.

## Usage

	module "s3-public" {
		# use this if testing a published private module
		source  = "app.terraform.io/captivereality/s3-public/aws"
		version = "0.3.0"

		# Uncomment this to use an AWS Profile. Default is ""
		# profile     = "my-profile"
		
		# Uncomment to change AWS region. Default is "eu-west-2"
		# region      = "us-east-1"
		
		# The name of the public bucket you want created...
		bucket_name = "my-public-test-bucket-1234567890"
	}

## Example

There is an example available in `/example`

## Requirements

| Name|Version|
|------|------|
|terraform|>=v1.1.3|
|aws|>=3.72.0|

## Provider

| Name|Version|
|------|------|
|aws|>=3.72.0|

## Resources

| Name|Type|
|------|------|
|aws_s3_bucket.s3_bucket|resource|

## Inputs

| Name|Description|Type|Default|Required|
|------|------|------|------|------|
|bucket_name|Name of the s3 bucket. Must be unique.|string|""|Yes|
|profile|AWS profile (must be valid in .aws)|string|""|No|
|region |AWS S3 Region|string|"eu-west-2"|No|
|tags|Tags to set on the bucket|map(string)|{}|No|

## Outputs

| Name|Description|
|------|------|
|arn|ARN of the bucket|
|endpoint|Website endpoint for the bucket|
|name|Name (id) of the bucket|

## Authors
Module is maintained by [Mark Castle](https://github.com/markcastle)

## Licence
MIT Licence. See [LICENCE](/LICENCE) for full details
