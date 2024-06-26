terraform {
  required_providers {
    apko = { source = "chainguard-dev/apko" }
  }
}

variable "extra_packages" {
  description = "The additional packages to install"
  default     = ["datadog-cluster-agent", "datadog-cluster-agent-oci-compat"]
}

data "apko_config" "this" {
  config_contents = file("${path.module}/latest.apko.yaml")
  extra_packages  = var.extra_packages
}

output "config" {
  value = jsonencode(data.apko_config.this.config)
}
