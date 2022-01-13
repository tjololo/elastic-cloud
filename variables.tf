variable "elastic_memory_size" {
  type = string
  description = "hot_content memory size"
}

variable "elastic_zone_count" {
  type = number
  description = "number of zones"
}

variable "enterprise_search_size" {
    type = string
    description = "enterprise search memory size"
}

variable "enterprise_search_zone_count" {
  type = number
  description = "number of zones"
}

variable "deploy_count" {
  type = number
  description = "number of deployments"
}