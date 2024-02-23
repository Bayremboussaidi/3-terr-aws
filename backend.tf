terraform {
  backend "s3" {
    bucket         = "bayrem-terraform-backend"
    # encrypt        = false 
    key            = "terraform.tfstate" #location necessary when apply /destroy ..
    region         = "eu-west-1"
    dynamodb_table = "bayrem-terraform-backend"
  }
}