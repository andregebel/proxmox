# proxmox
proxmox stuff


## Create some auto.tfvars files

credentials.auto.tfvars

```cfg
proxmox_api_url          = "https://nodename:8006/api2/json"
proxmox_api_token_id     = "proxmox_api_token_id"
proxmox_api_token_secret = "proxmox_api_token_secret"
proxmox_vm_template      = "templatename"
```


vmcloudinit.auto.tfvars

```cfg
proxmox_ssh_keys    = "sshkeys (sperate with "\n")"
proxmox_node_name   = "nodename"
proxmox_vm_name     = "vmanme"
proxmox_vm_template = "vmtemplate
proxmox_vm_username = "username"
proxmox_vm_password = "userpassword"
proxmox_vm_count    = 1
```
