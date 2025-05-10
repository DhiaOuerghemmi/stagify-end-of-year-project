variable "name_prefix" {
  type        = string
  description = "Prefix for resource names"
}
variable "common_tags" {
  type        = map(string)
  description = "Tags for all monitoring resources"
  default     = {}
}
