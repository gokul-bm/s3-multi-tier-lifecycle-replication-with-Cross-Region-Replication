resource "aws_s3_bucket" "primary" {
  bucket              = var.bucket_name
  object_lock_enabled = true
}

resource "aws_s3_bucket" "replicated" {
  provider = aws.replica
  bucket   = var.replica_bucket_name
}

resource "aws_s3_bucket_versioning" "primary" {
  bucket = aws_s3_bucket.primary.id
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket_versioning" "replicated" {
  provider = aws.replica
  bucket   = aws_s3_bucket.replica.id
  versioning_configuration { status = "Enabled" }
}

