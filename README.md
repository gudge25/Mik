# MikRo Terraform Configuration

This repository contains Terraform configurations for managing MikroTik RouterOS devices.

## Prerequisites

- Terraform >= 1.0
- RouterOS device(s) with API access enabled
- Network connectivity to the router(s)

## Structure

```
.
├── common/             # Common module for router configuration
│   ├── main.tf        # Router resources (DNS, schedulers, etc.)
│   └── terraform.tf   # Provider requirements
├── main.tf            # Root module configuration
├── terraform.tf       # Provider configuration
└── variables.tf       # Input variables
```

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Set required variables:
```bash
export TF_VAR_hosturl0="https://your-router-ip"
export TF_VAR_username0="your-username"
export TF_VAR_password0="your-password"
```

3. Review planned changes:
```bash
terraform plan
```

4. Apply changes:
```bash
terraform apply
```

## Security Notes

- The configuration disables unnecessary service ports for improved security
- Uses Quad9 DNS servers (9.9.9.9, 149.112.112.112) for secure DNS resolution
- Remote DNS requests are disabled by default
- SSL verification is currently disabled (`insecure = true`) - consider enabling for production use

## Best Practices

1. Always use version control
2. Never commit sensitive information
3. Use variables for sensitive data
4. Keep state files secure and consider using remote state storage
5. Review plans before applying changes
