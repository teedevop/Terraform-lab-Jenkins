//ec2 variables
variable "region_name" {
  type    = string
  default = "us-east-1"
}
variable "instance_type" {
  description = "this is the instance"
  type        = string
  default     = "t2.nano"
}
variable "env" {
  default = "dev"

}
variable "name" {
  default = "dev-jenkins-server"

}
//vpc variables

variable "vpc_name" {
  default = "DevOps vpc"

}