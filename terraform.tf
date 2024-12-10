terraform {
  required_version = ">= 1.0.0"
  required_providers {
    routeros = {
      source  = "terraform-routeros/routeros"
      version = "1.62.0"
    }
  }
}

provider "routeros" {
  alias    = "router0"
  hosturl  = var.hosturl0  # env ROS_HOSTURL or MIKROTIK_HOST
  username = var.username0 # env ROS_USERNAME or MIKROTIK_USER
  password = var.password0 # env ROS_PASSWORD or MIKROTIK_PASSWORD
  #ca_certificate = "/path/to/ca/certificate.pem" # env ROS_CA_CERTIFICATE or MIKROTIK_CA_CERTIFICATE
  insecure = true # env ROS_INSECURE or MIKROTIK_INSECURE
}
