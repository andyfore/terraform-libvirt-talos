# see https://github.com/hashicorp/terraform
terraform {
  required_version = ">=1.8.4"
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/random
    # see https://github.com/hashicorp/terraform-provider-random
    random = {
      source  = "hashicorp/random"
      version = ">=3.6.2"
    }
    # see https://registry.terraform.io/providers/dmacvicar/libvirt
    # see https://github.com/dmacvicar/terraform-provider-libvirt
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = ">=0.7.1"
    }
    # see https://registry.terraform.io/providers/siderolabs/talos
    # see https://github.com/siderolabs/terraform-provider-talos
    talos = {
      source  = "siderolabs/talos"
      version = ">=0.5.0"
    }
    # see https://registry.terraform.io/providers/hashicorp/helm
    # see https://github.com/hashicorp/terraform-provider-helm
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.13.2"
    }
  }
}

provider "libvirt" {
  uri = "qemu+ssh://arfore@10.0.10.175/system?sshauth=privkey&privkey=~/.ssh/id_rsa&known_hosts_verify=ignore&no_verify=1"
}

provider "talos" {
}
