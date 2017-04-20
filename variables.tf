variable "region" {
  description = "The AWS region to create resources in."
  default = "us-east-1"
}

variable "availability_zones" {
  description = "The availability zones"
  default = "us-east-1a,us-east-1b,us-east-1c,us-east-1d"
}

variable "ecs_cluster_name" {
  description = "The name of the Amazon ECS cluster."
  default = "DistelliDockerDemo"
}

variable "s3_bucket_name" {
  description = "The name of the s3 bucket to store the registry data in."
  default = "terraform-remote-state.thorntontechnical.ninja"
}

variable "registry_docker_image" {
  description = "The docker image to use when provisioning the registry."
  default     = "docker-distelli-demo:latest"
}

/* ECS optimized AMIs per region */
variable "amis" {
  default = {
    us-east-1      = "ami-62745007"
    us-east-1      = "ami-275ffe31"
    us-west-1      = "ami-689bc208"
    us-west-2      = "ami-bf9481db"
  }
}

variable "instance_type" {
  default = "t2.micro"
}
