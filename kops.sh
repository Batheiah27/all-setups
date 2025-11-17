#vim .bashrc
#export PATH=$PATH:/usr/local/bin/
#source .bashrc


#! /bin/bash
aws configure
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
wget https://github.com/kubernetes/kops/releases/download/v1.33.0/kops-linux-amd64
chmod +x kops-linux-amd64 kubectl
mv kubectl /usr/local/bin/kubectl
mv kops-linux-amd64 /usr/local/bin/kops

aws s3api create-bucket --bucket batheiah18g7.k8s.local --region us-east-1
aws s3api put-bucket-versioning --bucket batheiah18g7.k8s.local --region us-east-1 --versioning-configuration Status=Enabled
export KOPS_STATE_STORE=s3://batheiah18g6.k8s.local
kops create cluster --name batheiah6.k8s.local --zones us-east-1a --control-plane-image ami-0cae6d6fe6048ca2c --control-plane-count=1 --control-plane-size t2.micro --image ami-0cae6d6fe6048ca2c --node-count=2 --node-size t2.micro
kops update cluster --name batheiah6.k8s.local --yes --admin
