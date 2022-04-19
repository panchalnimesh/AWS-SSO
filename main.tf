data "aws_ssoadmin_instances" "sso" {}

resource "aws_ssoadmin_permission_set" "COPS-PS" {
  name             = data.aws_ssoadmin_permission_set.COPS.name
  description      = "Permission sets for Cloud Operation Team"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}

data "aws_identitystore_group" "COPS" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = data.aws_identitystore_group.COPS
  }
}

resource "aws_ssoadmin_permission_set" "DBA-PS" {
  name             = data.aws_ssoadmin_permission_set.DBA.name
  description      = "Permission sets for Database Team"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}

data "aws_identitystore_group" "DBA" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = data.aws_identitystore_group.DBA
  }
}

resource "aws_ssoadmin_permission_set" "NSP-PS" {
  name             = data.aws_ssoadmin_permission_set.NSP.name
  description      = "Permission sets for Network Team"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}

data "aws_identitystore_group" "NSP" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = data.aws_identitystore_group.NSP
  }
}

resource "aws_ssoadmin_permission_set" "InfraRead-PS" {
  name             = data.aws_ssoadmin_permission_set.InfraRead.name
  description      = "Permission sets for Infra Read"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}

data "aws_identitystore_group" "InfraRead" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = data.aws_identitystore_group.InfraRead
  }
}

resource "aws_ssoadmin_permission_set" "SEC-PS" {
  name             = "Example"
  description      = "An example"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}

data "aws_identitystore_group" "SEC" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = data.aws_identitystore_group.InfraSec
  }
}


resource "aws_ssoadmin_account_assignment" "example" {
  instance_arn       = data.aws_ssoadmin_permission_set.sso.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set..arn

  principal_id   = data.aws_identitystore_group.Cops.group_id
  principal_type = "GROUP"

  target_id   = "963720564431"
  target_type = "AWS_ACCOUNT"
}