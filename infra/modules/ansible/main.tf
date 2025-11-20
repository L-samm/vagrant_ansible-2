terraform {
  required_providers {
    ansible = {
      source  = "ansible/ansible"
      version = "~> 1.3.0"
    }
  }
}

resource "ansible_playbook" "playbook" {
  playbook   = "${path.root}/ansible/playbook.yml"
  name       = "vm"

  extra_vars = {
    ansible_host                  = var.ip_vm
    ansible_user                  = "admin_db"
    ansible_ssh_private_key_file  = var.ssh_key_path
  }

  replayable = true
}