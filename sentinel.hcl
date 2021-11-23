policy "allowed-terraform-version" {
  enforcement_level = "soft-mandatory"
}
module "tfplan-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}
 
module "tfstate-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfstate-functions/tfstate-functions.sentinel"
}
 
module "tfconfig-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/aws/aws-functions/aws-functions.sentinel"
}

# policy "enforce-mandatory-tags" {
#   source = "./policies/common/enforce-mandatory-tags.sentinel"
#   enforcement_level = "hard-mandatory"
# }

policy "require-private-acl-and-kms-for-s3-buckets" {
  source = "./policies/s3/require-private-acl-and-kms-for-s3-buckets.sentinel"
  enforcement_level = "hard-mandatory"
}
