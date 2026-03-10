terraform {
  backend "s3" {
    bucket = "manuall-project2"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
