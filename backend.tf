terraform {
  backend "s3"{
  bucket = "my-terra-bucket-vv"
  key = "terraform/state.tf"
  region = "ap-south-1"
  dynamodb_table = "terraform_dynamodb"
}
}