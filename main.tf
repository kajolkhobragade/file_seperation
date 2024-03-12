provider "aws" {
    region = var.region
  
}
terraform {
  backend "s3" {
    bucket = "terraform123"
    key = "terra.tfstate"
    region = "ap-south-1"
    dynamodb_table = "prod-1"
  }
}
resource "aws_instance" "abc" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    tags = var.tags
  
}