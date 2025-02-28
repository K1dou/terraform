variable "project_name" {
  type        = string
  description = "Project name to be used"

}

variable "tags" {
  type        = map(string)
  description = "Tags to be added to AWS resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create"

}

variable "subnet_private_1a" {
  type        = string
  description = "Subnet id from AZ 1a"
}
variable "subnet_private_1b" {
  type        = string
  description = "Subnet id from AZ 1b"

}