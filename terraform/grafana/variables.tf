variable "organization" {
  description = "iLert organization used to configure the provider"
  type        = string
}

variable "username" {
  description = "iLert username used to configure the provider"
  type        = string
}

variable "password" {
  description = "iLert password used to configure the provider"
  type        = string
}

variable "grafana_url" {
  description = "Grafana Server URL"
  type        = string
  default     = "127.0.0.1:3000"
}

variable "grafana_token" {
  description = "Grafana Server Token"
  type        = string
  default     = "admin;admin"
}
