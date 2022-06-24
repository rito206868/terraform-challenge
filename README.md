# terraform-challenge

=============> Setting github token like this:
Add following line in /home/{INSTANCE_USER}/.bash_profile
export TF_VAR_gittoken={Paste the copied Personal_Token copied from Git Repo}

Verify: env | grep -i TF_VAR

It would get reffered from variable.tf

=============> Terraform Cloud setup
Create account and workspace in https://app.terraform.io
Generate a token in https://app.terraform.io/app/settings/tokens

Store the token and initialize with following CLI commands,
1> terraform login -> paste the token when prompted
2> terraform init -> to initialize

Terraform will store the token in plain text in the following file
for use by subsequent commands:
    /home/ec2-user/.terraform.d/credentials.tfrc.json

Verify: cat /home/ec2-user/.terraform.d/credentials.tfrc.json