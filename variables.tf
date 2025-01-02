variable "hosturl0" {
  description = "URL of the Mikrotik RouterOS router"
  type        = string
  default     = "http://127.0.0.1"
}

variable "hosturl1" {
  description = "URL of the Mikrotik RouterOS router"
  type        = string
}

variable "username" {
  description = "Username for Mikrotik RouterOS router"
  type        = string
  #default     = "admin"
}

variable "password" {
  description = "Password for Mikrotik RouterOS router"
  type        = string
  #default     = "admin"
  sensitive = true
}
