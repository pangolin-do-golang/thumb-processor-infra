# thumb-processor-infra
Infra do Projeto Hackaton


### Pre Requirements To Run This Pipeline.

- Create a S3 Bucket in AWS Console (Unique Global Name)
  - Enable Versioning Bucket
* Change the *Bucket Name and DynamoDB Table Name* in backend.conf files `(./terraform/envs/dev | ./terraform/envs/prod)`
- Create a DynamoDB Table in AWS Console
  - Put In *Partition key* to *LockID* And Set *String* And *Crete Table*
- Create a Identity Provider (OIDC) in IAM Console and add ARN on github variables with Name: *AWS_ASSUME_ROLE_ARN*
  - How To Create a OIDC Github
    - https://aws.amazon.com/pt/blogs/security/use-iam-roles-to-connect-github-actions-to-actions-in-aws/


This Pipeline Runs With a Pull Request:
- Branches:
    - developer - Runs Developer Infra
    - main      - Runs Productions Infra

### Runs Localy

Get AWS Credentials And Runs:
```shell
aws configure  # And Paste de SECRET_KEY_ID and  SECRET_ACCESS_KEY and REGION

# After aws configure go to de Path /terraform and Runs: Config Backend S3
terraform init -backend-config=envs/dev/backend.tfvars

# Set Dev Worspace
terraform workspace new dev

# Runs Plan
terraform plan -out plan.out -var-file=envs/dev/terraform.tfvars

# Aplly Plan
terraform apply plan.out
```