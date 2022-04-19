# Permisson Set details

data "aws_ssoadmin_permission_set" "COPS-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  arn = var.COPS
}

data "aws_ssoadmin_permission_set" "DBA-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  arn = var.DBA
}

data "aws_ssoadmin_permission_set" "NSP-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  arn = var.NSP
}

data "aws_ssoadmin_permission_set" "InfraRead-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  arn = var.InfraRead
}

data "aws_ssoadmin_permission_set" "SEC-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  arn = var.SEC
}

# Inline Policy if required
/*
data "aws_iam_policy_document" "example" {
  statement {
    sid = "1"

    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }
}
*/

# ADGroup details to map with permission sets

data "aws_identitystore_group" "COPS-GP" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.COPS_GRP
  }
}

data "aws_identitystore_group" "DBA-GP" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.DBA_GRP
  }
}

data "aws_identitystore_group" "NSP-GP" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.NSP_GRP
  }
}


data "aws_identitystore_group" "InfraRead-GP" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.IR_GRP
  }
}

data "aws_identitystore_group" "SEC-GP" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.SEC_GRP
  }
}
