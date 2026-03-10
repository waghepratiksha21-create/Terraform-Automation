terraform {
  backend "s3" {
    bucket = "manuall-project1"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
