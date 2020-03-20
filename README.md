### How to use

```bash
cp ./env.example .env
# edit .env(input access id and key)

cp ./src/example.terraform.tfvars ./src/terraform.tfvars
# edit ./src/terraform.tfvars (input ID and role name for assume role.)

docker-compose run --rm tf /bin/ash

# on the container
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
terraform destroy -var-file="terraform.tfvars"
```
