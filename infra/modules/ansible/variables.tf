variable "ip_vm" {
  description = "Adresse IP publique de la VM"
  type        = string
}

variable "admin_username" {
  description = "Utilisateur SSH utilisé pour se connecter à la VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_private_key_base64" {
  type        = string
}
