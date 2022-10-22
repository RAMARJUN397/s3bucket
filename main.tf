terraform {
  required_version = ">=0.12.13"
}

provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIARGZPFHSSJRTG2FB2"
  secret_key = "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"
}

#Aws s3bucket
resource "aws_s3_bucket" "devopss3" {
  #bucket = "demodevops"
  acl    = "private"

  tags = {
    Name        = "devopsdemo"
    Environment = "OPS"
  }
}
