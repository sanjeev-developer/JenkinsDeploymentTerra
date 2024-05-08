terraform {
  backend "s3" {
    bucket         = "sanjeevterrastatefile"
    key            = "terraform.tfstate" # The name of the state file in the bucket
    region         = "us-west-2"
    dynamodb_table = "sanjeev_dynamo_table_name"
  }
}
