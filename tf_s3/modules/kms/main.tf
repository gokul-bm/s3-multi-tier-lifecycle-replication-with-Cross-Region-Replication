resource "aws_kms_key" "primary" {
  description         = "Primary region S3 KMS key"
  enable_key_rotation = true
}

resource "aws_kms_key" "replicated" {
  provider            = aws.replicated
  description         = "Replica region S3 KMS key"
  enable_key_rotation = true
}