# terraform-challenge

=>Setting github token like this:
Add following in /home/{INSTANCE_USER}/.bash_profile
export TF_VAR_gittoken={Paste the copied Personal_Token copied from Git Repo}

Verify: env | grep -i TF_VAR

=>It would get reffered from variable.tf

