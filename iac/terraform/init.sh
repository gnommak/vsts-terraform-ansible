#!/bin/bash
echo "************* execute terraform init"
## execute terrafotm build and sendout to packer-build-output
## export ARM_CLIENT_ID=$1
## export ARM_CLIENT_SECRET=$2
## export ARM_SUBSCRIPTION_ID=$3
## export ARM_TENANT_ID=$4
## export ARM_ACCESS_KEY=$5

touch /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo ARM_CLIENT_ID = \"$ARM_CLIENT_ID\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo ARM_CLIENT_SECRET = \"$ARM_CLIENT_SECRET\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo ARM_SUBSCRIPTION_ID = \"$ARM_SUBSCRIPTION_ID\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo ARM_TENANT_ID = \"$ARM_TENANT_ID\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
echo ARM_ACCESS_KEY = \"$ARM_ACCESS_KEY\" >> /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars

cat /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/backend.tfvars
ls -a /home/vsts/work/r1/a/_Diploma_gnommak-CI/drop/iac/terraform/azure/

echo "Run"
## terraform init  -backend-config=backend.tfvars