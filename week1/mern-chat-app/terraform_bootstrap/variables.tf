variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "mern-chat-app"
}

variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "bucket_name" {
  type    = string
  default = "mern-chat-app-terraform-state"
}
