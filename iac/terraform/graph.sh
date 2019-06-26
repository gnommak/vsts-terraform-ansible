#!/bin/bash
echo "************* execute terraform graph"
## execute terrafotm build and sendout to packer-build-output
export TF_WS=/home/vsts/work/r1/a/$RELEASE_PRIMARYARTIFACTSOURCEALIAS/drop/iac/terraform/azure/

cd $TF_WS

terraform graph | dot -Tsvg > graph.svg