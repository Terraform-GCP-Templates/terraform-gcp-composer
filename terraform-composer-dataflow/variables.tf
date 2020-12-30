variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "composer_env_name" {
  type = string
}

variable "node_count" {
  type = string
}

variable "composer_private_env" {
  type = object({
    enabled                = bool
    master_ipv4_cidr_block = string
  })
}

variable "node_config" {
  type = object({
    disk_size_gb      = number
    machine_type      = string
    enable_ip_aliases = bool
  })
}

variable "network" {
  type = any
}
variable "subnetwork" {
  type = any
}
variable "service_account" {
  type = any
}

variable "software_config" {
  type = object({
    image_version  = string
    python_version = string
    pypi_packages  = map(any)
    env_variables  = map(any)
    airflow_config = map(any)
  })

}

variable "auto_create_subnetworks" {
  type = bool
}

variable "routing_mode" {
  type = string
}

variable "delete_default_routes_on_create" {
  type = bool
}
variable "subnet_name" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "cidr_range" {
  type = string
}

variable "account_id" {
  type = string
}

variable "display_name" {
  type = string
}

variable "folder_path" {

  type = string

}
