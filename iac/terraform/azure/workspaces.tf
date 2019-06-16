terraform {
  backend "azurerm" {
    storage_account_name = "${var.s_a_name}"
    container_name       = "${var.c_name}"
    key                  = "dev.terraform.tera"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "${var.a_key}"
  }
}