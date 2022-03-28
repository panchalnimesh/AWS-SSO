data "aws_ssoadmin_instances" "example" {}

data "aws_ssoadmin_permission_set" "example" {
  instance_arn = tolist(data.aws_ssoadmin_instances.example.arns)[0]
  name         = "AdministratorAccess"
}

data "aws_identitystore_group" "example" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.example.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = "GG-APP-AWSMgmt-Okta-ECS"
  }
}

resource "aws_ssoadmin_account_assignment" "example" {
  instance_arn       = data.aws_ssoadmin_permission_set.example.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.example.arn

  principal_id   = data.aws_identitystore_group.example.group_id
  principal_type = "GROUP"

  target_id   = "963720564431"
  target_type = "AWS_ACCOUNT"
}