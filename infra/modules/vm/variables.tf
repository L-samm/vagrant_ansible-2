variable "vm_name" { type = string }
variable "resource_group_name" { 
    type = string 
}
variable "location" { type = string }
variable "admin_username" { type = string }
variable "ssh_public_key" { type = string }
variable "vm_size" {
  type    = string
  default = "Standard_B1ls"
}
variable "env_name" {
  type = string
}