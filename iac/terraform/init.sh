#!/bin/bash
echo "************* execute terraform init"
## execute terrafotm build and sendout to packer-build-output
## test1

export TF_WS=/home/vsts/work/r1/a/$RELEASE_PRIMARYARTIFACTSOURCEALIAS/drop/iac/terraform/azure/workspaces.tf
export TF_VOF=/home/vsts/work/r1/a/$RELEASE_PRIMARYARTIFACTSOURCEALIAS/drop/iac/terraform/azure/vof.tfvars

touch $TF_WS
echo "terraform {" >> $TF_WS
echo "  backend \"azurerm\" {" >> $TF_WS
echo "    storage_account_name = \"$STORAGE_ACCOUNT_NAME\"" >> $TF_WS
echo "    container_name       = \"$CONTAINER_NAME\"" >> $TF_WS
echo "    key                  = \"dev.terraform.tera\"" >> $TF_WS
echo "    access_key = \"$ARM_ACCESS_KEY\"" >> $TF_WS
echo "  }" >> $TF_WS
echo "}" >> $TF_WS

echo "ssh_keys = \"$SSH_PUB_KEY\"" >> $TF_VOF

echo "Run"