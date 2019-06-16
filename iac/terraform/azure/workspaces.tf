terraform {
  backend "azurerm" {
    storage_account_name = "${var.ssh_key}"
    container_name       = "${var.ssh_key}"
    key                  = "dev.terraform.tera"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "${var.a_key}"
  }
}