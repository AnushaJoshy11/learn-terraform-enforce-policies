policy "allowed-terraform-version" {
  enforcement_level = "soft-mandatory"
}
policy "require-private-acl-and-kms-for-s3-buckets" {
  source = "./require-private-acl-and-kms-for-s3-buckets.sentinel"
  enforcement_level = "hard-mandatory"
}
