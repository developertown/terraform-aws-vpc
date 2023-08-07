# terraform-aws-vpc

Terraform module to provision an [`Amazon Virtual Private Cloud`](https://aws.amazon.com/en/vpc/).

We're using the module [`terraform-aws-modules/vpc/aws`](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/5.0.0) behind the scenes.

You can find the documentation for the module [`here`](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/5.0.0)

## Usage

### Basic

```hcl
module "vpc" {
  source  = "github.com/developertown/terraform-aws-vpc.git?ref=vVERSION"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
```
