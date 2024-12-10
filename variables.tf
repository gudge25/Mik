variable "hosturl0" {
  description = "URL of the Mikrotik RouterOS router"
  type        = string
  #default     = "https://89.0.142.86"
}

variable "username0" {
  description = "Username for Mikrotik RouterOS router"
  type        = string
  #default     = "admin"
}

variable "password0" {
  description = "Password for Mikrotik RouterOS router"
  type        = string
  #default     = "admin"
  sensitive = true
}
