variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default     = "ami-0a4df59262c92cf19"
}

variable "instance_type" {
  description = "type of EC2 instance to provision. (t2.micro, t2.small, t2.medium, t2.large, etc.)"
  default     = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default     = "tfe-demo-1"
}

variable "owner" {
  description = "identifier of who is provisioning"
  default     = "rcassidy"
}

variable "subnet_ids" {
  description = "To use a predefined subnet use $${data.[subnet]}"
}

variable "count" {
  description = "Number of instances to provision"
  default     = "2"
}
