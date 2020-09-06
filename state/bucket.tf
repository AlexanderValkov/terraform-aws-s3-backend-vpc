resource "aws_s3_bucket" "state" {
  bucket = "tf-state-bucket-1312312313"   # You may need to change the name of the bucket, in case it case it already exists
  acl    = "private"

  force_destroy = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "old_versions"
    enabled = true

    noncurrent_version_expiration {
      days = 2
    }
  }


  tags = {
    Name        = "tf-state-bucket"
    Environment = "Test"
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.state.bucket
}
