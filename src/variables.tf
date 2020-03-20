variable "name" {
  description = "name for ec2."
  type        = string
  default     = "hello"
}

variable "instance_type" {
  description = "instance type for ec2."
  type        = string
  default     = "t2.micro"
}

variable "base_name" {
  description = "base name for this project"
  type        = string
  default     = "test"
}
