### Prerequisites

\- [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html#installing-terraform). Version should be 0.12.x (0.13.x has some critical bugs, e.g. [25851](https://github.com/hashicorp/terraform/issues/25851)).


\- Credentials. [Shared credentials](https://www.terraform.io/docs/providers/aws/index.html#shared-credentials-file) or any other [method of authentication](https://www.terraform.io/docs/providers/aws/index.html#authentication).

\- AWS permissions for:

- S3 bucket
- DynamoDB table
- VPC
- And other resources

### Prepare s3 backend

```
cd state &&\
terraform init &&\
terraform apply -auto-approve &&\
cd -
```

### Deploy

```
# To restrict ssh/web access to resources to your IP:
export TF_VAR_allow_from=$(curl -s https://ifconfig.co)/32

# To assign your key for EC2 instances:
export TF_VAR_key_name=''

cd cfg &&\
terraform init &&\
terraform apply -auto-approve \
                -var-file=2-variables.tfvars &&\
cd -
```




## Clean-up

### Destroy cfg

```
cd cfg &&\
terraform destroy -auto-approve \
                  -var-file=2-variables.tfvars &&\
cd -
```
### Destroy s3 backend

```
cd state &&\
terraform destroy -auto-approve &&\
cd -
```
