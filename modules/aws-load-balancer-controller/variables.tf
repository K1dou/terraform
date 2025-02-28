variable "project_name" {
  type        = string
  description = "Project name to be used"

}

variable "tags" {
  type        = map(string)
  description = "Tags to be added to AWS resources"
}


