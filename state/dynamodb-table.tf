resource "aws_dynamodb_table" "state" {
  name           = "tf-state-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "tf-state-table"
    Environment = "Test"
  }
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.state.name
}
