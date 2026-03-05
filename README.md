# terraform-google-paloalto-template

## Description
### Tagline
This is an auto-generated module.

### Detailed
This module was generated from [terraform-google-module-template](https://github.com/terraform-google-modules/terraform-google-module-template/), which by default generates a module that simply creates a GCS bucket. As the module develops, this README should be updated.

The resources/services/activations/deletions that this module will create/trigger are:

- Create a GCS bucket with the provided name

### PreDeploy
To deploy this blueprint you must have an active billing account and billing permissions.

## Architecture
![alt text for diagram](https://www.link-to-architecture-diagram.com)
1. Architecture description step no. 1
2. Architecture description step no. 2
3. Architecture description step no. N

## Documentation
- [Hosting a Static Website](https://cloud.google.com/storage/docs/hosting-static-website)

## Deployment Duration
Configuration: X mins
Deployment: Y mins

## Cost
[Blueprint cost details](https://cloud.google.com/products/calculator?id=02fb0c45-cc29-4567-8cc6-f72ac9024add)

## Usage

Basic usage of this module is as follows:

```hcl
module "paloalto_template" {
  source  = "terraform-google-modules/paloalto-template/google"
  version = "~> 0.1"

  project_id  = "<PROJECT ID>"
  subnetwork_self_link = "<SUBNET SELF LINK>"
  ilb = "<INTERNAL LOAD BLANACER RESEREV IP>"
}
```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ilb\_ip | IP reserved for Internal Load Balancer | `string` | `""` | yes |
| name\_prefix | Prefix for the resource names. | `string` | `"pa"` | no |
| project\_id | n/a | `string` | `""` | yes |
| region | n/a | `string` | `"us-central1"` | no |
| subnetwork\_self\_link | Subnetwork name | `string` | `""` | yes |
| template\_name | Template name | `string` | `"t1"` | no |
| zone | For GCE staging, use the GCE zone and the CCFE zone will be inferred. | `string` | `"us-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| gateway\_ip | IP of the gateway template |
| template\_id | ID of the instance template |
| template\_self\_link | Self link of the instance template |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] v1.3
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v5.41

### Service Account

A service account with the following roles must be used to provision
the resources of this module:

- Compute Instance Admin: `roles/compute.instanceAdmin.v1`
- Service Account User: `roles/iam.serviceAccountUser`

The [Project Factory module][project-factory-module] and the
[IAM module][iam-module] may be used in combination to provision a
service account with the necessary roles applied.

### APIs

A project with the following APIs enabled must be used to host the
resources of this module:

- Compute Engine API: `compute.googleapis.com`

The [Project Factory module][project-factory-module] can be used to
provision a project with the necessary APIs enabled.

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.

[iam-module]: https://registry.terraform.io/modules/terraform-google-modules/iam/google
[project-factory-module]: https://registry.terraform.io/modules/terraform-google-modules/project-factory/google
[terraform-provider-gcp]: https://www.terraform.io/docs/providers/google/index.html
[terraform]: https://www.terraform.io/downloads.html

## Security Disclosures

Please see our [security disclosure process](./SECURITY.md).
