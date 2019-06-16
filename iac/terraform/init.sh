#!/bin/bash
echo "************* execute terraform init"
## execute terrafotm build and sendout to packer-build-output
## export ARM_CLIENT_ID=$1
## export ARM_CLIENT_SECRET=$2
## export ARM_SUBSCRIPTION_ID=$3
## export ARM_TENANT_ID=$4
## export ARM_ACCESS_KEY=$5

touch /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo arm_client_id = \"$ARM_CLIENT_ID\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo arm_client_secret = \"$ARM_CLIENT_SECRET\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo arm_subscription_id = \"$ARM_SUBSCRIPTION_ID\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo arm_tenant_id = \"$ARM_TENANT_ID\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo a_key = \"$ARM_ACCESS_KEY\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo ssh_key = \"$SSH_PUB_KEY\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo s_a_name = \"$STORAGE_ACCOUNT_NAME\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo c_name = \"$CONTAINER_NAME\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars

cut /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars

echo "Run"
## terraform init  -backend-config=backend.tfvars