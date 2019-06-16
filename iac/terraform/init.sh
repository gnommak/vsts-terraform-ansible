#!/bin/bash
echo "************* execute terraform init"
## execute terrafotm build and sendout to packer-build-output
export TF_WS=/home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/workspaces.tf

touch $TF_WS
echo "terraform {" >> $TF_WS
echo "  backend \"azurerm\" {" >> $TF_WS
echo arm_client_id = \"$ARM_CLIENT_ID\" >> $TF_WS
echo arm_client_secret = \"$ARM_CLIENT_SECRET\" >> $TF_WS
echo arm_subscription_id = \"$ARM_SUBSCRIPTION_ID\" >> $TF_WS
echo arm_tenant_id = \"$ARM_TENANT_ID\" >> $TF_WS
echo a_key = \"$ARM_ACCESS_KEY\" >> $TF_WS
echo ssh_key = \"$SSH_PUB_KEY\" >> $TF_WS
echo s_a_name = \"$STORAGE_ACCOUNT_NAME\" >> $TF_WS
echo c_name = \"$CONTAINER_NAME\" >> $TF_WS

ls /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/
cat $TF_WS

echo "Run"