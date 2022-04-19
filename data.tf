# Permisson Set details

data "aws_ssoadmin_permission_set" "COPS-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.example.arns)[0]
  name         = var.COPS
}

data "aws_ssoadmin_permission_set" "DBA-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.example.arns)[0]
  name         = var.DBA
}

data "aws_ssoadmin_permission_set" "NSP-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.example.arns)[0]
  name         = var.NSP
}

data "aws_ssoadmin_permission_set" "InfraRead-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.example.arns)[0]
  name         = var.InfraRead
}

data "aws_ssoadmin_permission_set" "SEC-PS" {
  instance_arn = tolist(data.aws_ssoadmin_instances.example.arns)[0]
  name         = var.SEC
}


# ADGroup details to map with permission sets

data "aws_identitystore_group" "COPS" {
  filter {
    name   = "group-name"
    values = [var.COPS_GRP]
  }
}

data "aws_identitystore_group" "DBA" {
  filter {
    name   = "group-name"
    values = [var.DBA_GRP]
  }
}

data "aws_identitystore_group" "Network" {
  filter {
    name   = "group-name"
    values = [var.NSP_GRP]
  }
}

data "aws_identitystore_group" "InfraSec" {
  filter {
    name   = "group-name"
    values = [var.SEC_GRP]
  }
}

data "aws_identitystore_group" "InfraRead" {
  filter {
    name   = "group-name"
    values = [var.IR_GRP]
  }
}