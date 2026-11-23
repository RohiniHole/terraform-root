terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


   backend "s3" {
     bucket         = "2026-mydev-firstproject-terraform-sample-batch-33"
     key            = "infra/terraform.tfstate"
     region         = "ap-south-1"
     dynamodb_table = "my-dynamodb-table"
     encrypt        = true
   }
}
