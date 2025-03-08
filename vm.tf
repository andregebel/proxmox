resource "proxmox_vm_qemu" "srv_demo_1" {
  name        = var.proxmox_vm_name
  target_node = var.proxmox_node_name
  clone       = var.proxmox_vm_template
  bios        = "ovmf"
  machine     = "q35"
  cores       = 2
  sockets     = 1
  memory      = 2048
  scsihw      = "virtio-scsi-pci"

  serial {
    id = 0
  }

  vga {
    type = "std"
  }

  disks {
    scsi {
      scsi1 {
        cloudinit {
          storage = "ssd1"
        }
      }
    }
    virtio {
      virtio0 {
        disk {
          size    = "32G"
          storage = "ssd1"
          discard = true
        }
      }
    }
  }

  network {
    id       = 0
    bridge   = "vmbr0"
    model    = "virtio"
    firewall = false
  }

  ciuser     = var.proxmox_vm_username
  cipassword = var.proxmox_vm_password
  ipconfig0  = "ip=dhcp"
  sshkeys    = var.proxmox_ssh_keys
  ciupgrade  = true
}