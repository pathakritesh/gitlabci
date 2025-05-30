# Azure VNet Terraform Project

This project contains Terraform configurations to create and manage Azure Virtual Networks with a production-ready GitLab CI/CD pipeline.

## Prerequisites
- Configure OpenID Connect in Azure to retrieve temporary credentials URL:https://docs.gitlab.com/ci/cloud_services/azure/
- Azure subscription
- GitLab account
- Terraform CLI (for local development)
- Azure CLI (for local development)

## Project Structure

```
.
├── .gitlab-ci.yml    # GitLab CI/CD pipeline configuration
├── main.tf          # Main Terraform configuration
├── variables.tf     # Variable definitions
└── README.md        # This file
```

## Pipeline Stages

1. **Install**: Installs required tools and dependencies
2. **Validate**: Validates Terraform configuration
3. **Security**: Runs security checks using tfsec
4. **Test**: Runs compliance tests
5. **Plan**: Creates execution plan
6. **Apply**: Applies the configuration (manual approval required)

## Usage

1. Clone the repository
2. Configure Azure credentials in GitLab CI/CD variables:
   - `ARM_CLIENT_ID`
   - `ARM_TENANT_ID`

3. Update the variables in your environment or create a `terraform.tfvars` file

4. The pipeline will automatically run on:
   - Push to main branch
   - Merge requests

## Local Development

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Create a plan:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

## Security

- Security scanning is performed using tfsec
- All changes require review and approval
- Production deployments require manual approval

## Contributing

1. Create a feature branch
2. Make your changes
3. Create a merge request
4. Wait for pipeline approval
5. Merge after approval

## Azure OpenID Connect configuration on Console 
- Microsoft Entra ID > App registrations > New registration> Follow the screenshot 
![image](https://github.com/user-attachments/assets/83c852bf-0665-4999-a3b9-a75f847ee480)

