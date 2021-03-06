variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "subnet_ids" {
  description = "A list of Subnet ids"
  type        = list(any)
}

variable "instance" {
  description = "Map of all the variables"
}

variable "subnet_group" {
  default = [
    {
      name        = "database-1"
      name_prefix = null
      description = ""
  }]
}

variable "instance_password" {
  type = string
}

variable "db_subnet_group_name" {
  default     = "default"
  type        = string
  description = "The name of the subnet to use for the database"
}

variable "rds_role" {
  description = "The IAM ARN of the role for RDS monitoring"
  type        = string
  default     = ""
}

variable "publicly_accessible" {
  type        = bool
  description = "To comply with security rules CKV_AWS_17 this defaults to false"
  default     = false
}

variable "storage_encrypted" {
  description = "Encryption status"
  type        = bool
  default     = true
}
