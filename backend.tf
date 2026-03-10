terraform {
  backend "s3" {
    bucket = "young-minds-app-virginai"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
