# Simple Example

This example illustrates how to use the `paloalto-template` module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ilb\_ip | IP reserved for Internal Load Balancer | `string` | `"10.128.0.10"` | no |
| name\_prefix | Prefix for the resource names. | `string` | `"pa"` | no |
| project\_id | n/a | `string` | `""` | no |
| region | n/a | `string` | `"us-central1"` | no |
| subnetwork\_self\_link | Subnetwork name | `string` | `""` | no |
| template\_name | Template name | `string` | `"t1"` | no |
| zone | For GCE staging, use the GCE zone and the CCFE zone will be inferred. | `string` | `"us-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| gateway\_ip | IP of the gateway template |
| template\_id | ID of the instance template |
| template\_self\_link | Self link of the instance template |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

To provision this example, run the following from within this directory:
- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure
