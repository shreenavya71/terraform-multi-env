terraform {
    required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.48.0"
    }
    }
    backend "s3" { # create s3 buscket with the navya-remote-state-bucket name and give the details here --in aws---creating remote state
    bucket = "navya-remote-state-bucket"
    key    = "workspace"    # you can give any name
    region = "us-east-1"
    dynamodb_table = "remote-locking"   # create a DynamoDB table with the name remote-locking and id LockID -- in aws----creating remote locking machanism 
    }
}
# provide authentication here
provider "aws" {
    region = "us-east-1"
}