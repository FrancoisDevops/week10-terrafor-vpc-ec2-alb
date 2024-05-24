terraform {
  backend "s3" {
    bucket         = "week10-mdfg-terraform"
    key            = "week10/terrafor.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "state-log"
  }
}

