terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.0.7" # Correct version as per the Terraform Registry
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "nomad_vm" {
  name        = "minimal-nomad-vm"
  os_type     = "Linux_64"
  cpus        = 1
  memory      = "1024" # 1GB memory
  disk_size   = "10000" # 10GB disk size

  # ISO URL for Alpine Linux or other minimal Linux distributions
  iso = "https://dl-cdn.alpinelinux.org/alpine/v3.18/releases/x86_64/alpine-standard-3.18.2-x86_64.iso"

  # Network configuration
  network_adapter {
    type = "nat"
  }

  # SSH configuration
  ssh_username = "root" # Default for Alpine
  ssh_password = "root" # Change as required
  ssh_port     = 22
  boot_wait    = "10s"

  # Provisioning script to install Nomad
  provision {
    type    = "shell"
    inline  = [
      "apk add --no-cache unzip curl bash",
      "curl -fsSL https://releases.hashicorp.com/nomad/1.5.6/nomad_1.5.6_linux_amd64.zip -o nomad.zip",
      "unzip nomad.zip",
      "mv nomad /usr/local/bin/",
      "mkdir -p /etc/nomad.d",
    ]
  }
}
