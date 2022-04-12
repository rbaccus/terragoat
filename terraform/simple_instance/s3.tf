provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "docking_bay" {
  tags = {
    git_commit           = "016721161628719e39a554fed21d6d00dd33daff"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2022-04-11 21:42:55"
    git_last_modified_by = "rbaccus@outlook.com"
    git_modifiers        = "rbaccus"
    git_org              = "rbaccus"
    git_repo             = "terragoat"
    yor_trace            = "022aca57-4957-492c-8f92-9d0467172297"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "docking_bay" {
  bucket = aws_s3_bucket.docking_bay.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "578080d4588f0a54efeee0749982217584888d14"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2022-04-12 21:21:39"
    git_last_modified_by = "35856167+rbaccus@users.noreply.github.com"
    git_modifiers        = "35856167+rbaccus/rbaccus"
    git_org              = "35856167+rbaccus/rbaccus"
    git_repo             = "terragoat"
    yor_trace            = "ff32391e-ba8d-497e-bbf6-70f384e2c080"
  }
}