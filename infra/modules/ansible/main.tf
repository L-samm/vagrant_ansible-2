terraform {
  required_providers {
    ansible = {
      source  = "ansible/ansible"
      version = "~> 1.3.0"
    }
  }
}

resource "ansible_playbook" "playbook" {
  playbook   = "${path.cwd}/../ansible/playbook.yml"
  name       = "vm"

  extra_vars = {
    ansible_host                  = var.ip_vm
    ansible_user                  = "admin_db"
    ansible_ssh_private_key_file  = base64decode(var.ssh_private_key_base64)
  }

  replayable = true
}