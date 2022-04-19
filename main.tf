data "aws_ssoadmin_instances" "sso" {}

resource "aws_ssoadmin_permission_set" "COPS-PS" {
  name             = data.aws_ssoadmin_permission_set.COPS-PS.name
  description      = "Permission sets for Cloud Operation Team"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}


resource "aws_ssoadmin_permission_set" "DBA-PS" {
  name             = data.aws_ssoadmin_permission_set.DBA-PS.name
  description      = "Permission sets for Database Team"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}



resource "aws_ssoadmin_permission_set" "NSP-PS" {
  name             = data.aws_ssoadmin_permission_set.NSP-PS.name
  description      = "Permission sets for Network Team"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}


resource "aws_ssoadmin_permission_set" "InfraRead-PS" {
  name             = data.aws_ssoadmin_permission_set.InfraRead-PS.name
  description      = "Permission sets for Infra Read"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}

resource "aws_ssoadmin_permission_set" "SEC-PS" {
  name             = "Example"
  description      = "An example"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}

resource "aws_ssoadmin_account_assignment" "example" {
  instance_arn       = data.aws_ssoadmin_permission_set.COPS-PS.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.COPS-PS.arn

  principal_id   = data.aws_identitystore_group.COPS-GP.group_id
  principal_type = "GROUP"

  target_id   = "963720564431"
  target_type = "AWS_ACCOUNT"
}