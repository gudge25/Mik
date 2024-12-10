variable "hosturl0" {
  description = "URL of the Mikrotik RouterOS router"
  type        = string
  #default     = "https://89.0.142.86"
}

variable "hosturl1" {
  description = "URL of the Mikrotik RouterOS router"
  type        = string
  #default     = "https://89.0.142.86"
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
