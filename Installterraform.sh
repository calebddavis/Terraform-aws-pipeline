#log into ec2 instance and install terraform

sudo su

cd /home/ubuntu

wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip

apt install unzip

unzip terraform_0.12.24_linux_amd64.zip

#set path 
echo $"export PATH=\$PATH:$(pwd)" >> ~/.bash_profile

source ~/.bash_profile

#start terraform 
terraform

mkdir terraform-build

cd terraform-build/

#start terraform initialize the backend with this folder
cd /home/ubuntu/terraform-build

terraform init

#apply changes to infrastutrue 
terraform apply

#destroy the ec2
terraform destroy 


#run terraform plan to show what is created
terraform plan 

