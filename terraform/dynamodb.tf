resource "aws_dynamodb_table" "bt_table_tag_info" {
  name         = "bagTag2026_tag_info-${var.version}"
  billing_mode = "PAY_PER_REQUEST"
  #deletion_protection_enabled = "true"
  hash_key = "tagNumber"

  attribute {
    name = "tagNumber"
    type = "N"
  }
}

resource "aws_dynamodb_table" "bt_table_users" {
  name         = "bagTag2026_users-${var.version}"
  billing_mode = "PAY_PER_REQUEST"
  #deletion_protection_enabled = "true"
  hash_key = "userId"

  attribute {
    name = "userId"
    type = "S"
  }
}

resource "aws_dynamodb_table" "bt_table_challenge_log" {
  name         = "bagTag2026_challenge_log-${var.version}"
  billing_mode = "PAY_PER_REQUEST"
  #deletion_protection_enabled = "true"
  hash_key = "challengeId"

  attribute {
    name = "challengeId"
    type = "S"
  }
}