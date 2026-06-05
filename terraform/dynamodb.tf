resource "aws_dynamodb_table" "bt_table_tag_info" {
  name         = "${var.version}_bagTag_tag_info"
  billing_mode = "PAY_PER_REQUEST"
  #deletion_protection_enabled = "true"
  hash_key = "tagNumber"

  attribute {
    name = "tagNumber"
    type = "N"
  }
}

resource "aws_dynamodb_table" "bt_table_users" {
  name         = "${var.version}_bagTag_users"
  billing_mode = "PAY_PER_REQUEST"
  #deletion_protection_enabled = "true"
  hash_key = "userId"

  attribute {
    name = "userId"
    type = "S"
  }
}

resource "aws_dynamodb_table" "bt_table_challenge_log" {
  name         = "${var.version}_bagTag_challenge_log"
  billing_mode = "PAY_PER_REQUEST"
  #deletion_protection_enabled = "true"
  hash_key = "challengeId"

  attribute {
    name = "challengeId"
    type = "S"
  }
}