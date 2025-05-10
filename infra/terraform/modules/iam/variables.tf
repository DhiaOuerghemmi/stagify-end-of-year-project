variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "trusted_services" {
  description = "List of AWS services allowed to assume this role"
  type        = list(string)
}

variable "managed_policy_arns" {
  description = "List of ARNs for AWS managed policies to attach"
  type        = list(string)
  default     = []
}

variable "inline_policy_json" {
  description = "JSON document for an inline policy"
  type        = string
  default     = "{}"
}

variable "common_tags" {
  description = "Tags to apply to all IAM resources"
  type        = map(string)
  default     = {}
}
