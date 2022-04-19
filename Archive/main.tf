data "aws_ssoadmin_instances" "sso" {}
/*
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
  name             = data.aws_ssoadmin_permission_set.SEC-PS.name
  description      = "Permission sets for Security Team"
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  session_duration = "PT2H"
}
*/
resource "aws_ssoadmin_account_assignment" "sso1" {
  instance_arn       = data.aws_ssoadmin_permission_set.DBA-PS.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.DBA-PS.arn

  principal_id   = data.aws_identitystore_group.DBA-GP.group_id
  principal_type = "GROUP"

  target_id   = var.New_AC_NUMBER
  target_type = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "sso2" {
  instance_arn       = data.aws_ssoadmin_permission_set.COPS-PS.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.COPS-PS.arn

  principal_id   = data.aws_identitystore_group.COPS-GP.group_id
  principal_type = "GROUP"

  target_id   = var.New_AC_NUMBER
  target_type = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "sso3" {
  instance_arn       = data.aws_ssoadmin_permission_set.NSP-PS.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.NSP-PS.arn

  principal_id   = data.aws_identitystore_group.NSP-GP.group_id
  principal_type = "GROUP"

  target_id   = var.New_AC_NUMBER
  target_type = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "sso4" {
  instance_arn       = data.aws_ssoadmin_permission_set.InfraRead-PS.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.InfraRead-PS.arn

  principal_id   = data.aws_identitystore_group.InfraRead-GP.group_id
  principal_type = "GROUP"

  target_id   = var.New_AC_NUMBER
  target_type = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "sso5" {
  instance_arn       = data.aws_ssoadmin_permission_set.SEC-PS.instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.SEC-PS.arn

  principal_id   = data.aws_identitystore_group.SEC-GP.group_id
  principal_type = "GROUP"

  target_id   = var.New_AC_NUMBER
  target_type = "AWS_ACCOUNT"
}