#!/bin/bash
echo "************* execute terraform init"
## execute terrafotm build and sendout to packer-build-output
export TF_WS=/home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/workspaces.tf

touch $TF_WS
echo "terraform {" >> $TF_WS
echo "  backend \"azurerm\" {" >> $TF_WS
echo "    storage_account_name = \"$STORAGE_ACCOUNT_NAME\"" >> $TF_WS
echo "    container_name       = \"$CONTAINER_NAME\""
echo "    key                  = \"dev.terraform.tera\""
echo "    access_key = \"$ARM_ACCESS_KEY\""
echo "  }"
echo "}"

ls /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/
cat $TF_WS

echo "Run"