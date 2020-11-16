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
  default     = "http://127.0.0.1:3000"
}

variable "grafana_token" {
  description = "Grafana Server Token"
  type        = string
  default     = "admin:admin"
}

variable "ilert_user_email" {
  description = "The iLert user email to create"
  type        = string
  default     = "example@example.com"
}

variable "ilert_user_username" {
  description = "The iLert user name to create"
  type        = string
  default     = "example"
}

variable "ilert_user_mobile_code" {
  description = "The iLert user mobile to create"
  type        = string
  default     = "DE"
}

variable "ilert_user_mobile_number" {
  description = "The iLert user mobile to create"
  type        = string
  default     = "+491234567890"
}
