variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token_secret" {
  type      = string
  sensitive = true
}

variable "proxmox_node_name" {
  type = string
}

variable "proxmox_vm_name" {
  type = string
}

variable "proxmox_vm_template" {
  type = string
}

variable "proxmox_ssh_keys" {
  type      = string
  sensitive = true
}

variable "proxmox_vm_username" {
  type      = string
  sensitive = true
}

variable "proxmox_vm_password" {
  type      = string
  sensitive = true
}

variable "proxmox_vm_count" {
  type = number
}
