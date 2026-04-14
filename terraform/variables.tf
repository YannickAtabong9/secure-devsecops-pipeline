variable "aws_region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "secure-cluster-tf"
}

variable "service_name" {
  default = "secure-node-service"
}

variable "image_url" {
  description = "ECR image URL"
}
