module "s3" {
  source = "../../modules/s3"
  bucket_name          = var.bucket_name
  replica_bucket_name  = var.replica_bucket_name
}

module "kms" {
  source = "../../modules/kms"
  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
}