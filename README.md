
## Structure
```
private_aws
├── .circleci
|   └── config.yml
├── README.md
├── terrafrom
|   ├── main.tf
|   └── variable.tf
└── cloudformation
    └── cfn.yml
```

## environment

### terraform
```
$ terraform --version
Terraform v0.12.29
```

### aws cli
```
$ aws --version
aws-cli/2.0.58 Python/3.7.3
```

## Export Environment Variable
```
# Your own AWS Access Key ID
$ export AWS_ACCESS_KEY_ID='xxxxxxxxxxxxx'

# Your own AWS Secret Access Key
$ export AWS_SECRET_ACCESS_KEY='xxxxxxxxxxxxxxxxxx'
```

## Execute Terraform
```
$ terraform init
$ terraform plan
$ terraform apply
```

