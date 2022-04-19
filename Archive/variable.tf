variable "COPS" {
  description = "This is Permission set for Cops"
  type        = string
  default     = "arn:aws:sso:::permissionSet/ssoins-8210c8e9462b45b7/ps-b66125f1f8be853f"
}

variable "DBA" {
  description = "This is Permission set for DBA"
  type        = string
  default     = "arn:aws:sso:::permissionSet/ssoins-8210c8e9462b45b7/ps-f027b3b8afa187f8"
}

variable "NSP" {
  description = "This is Permission set for Network Team"
  type        = string
  default     = "arn:aws:sso:::permissionSet/ssoins-8210c8e9462b45b7/ps-fc1513ea9a735519"
}

variable "InfraRead" {
  description = "This is Permission set for Indra Read"
  type        = string
  default     = "arn:aws:sso:::permissionSet/ssoins-8210c8e9462b45b7/ps-24497b950c6a9c2d"
}

variable "SEC" {
  description = "This is Permission set for Security Team"
  type        = string
  default     = "arn:aws:sso:::permissionSet/ssoins-8210c8e9462b45b7/ps-ba1d04465c58b05d"
}



variable "COPS_GRP" {
  description = "This is Group for Cloud Operation Team"
  type        = string
  default     = "GG-APP-AWSMgmt-Okta-ECS"
}

variable "DBA_GRP" {
  description = "This is Group for Database Operation Team"
  type        = string
  default     = "GG-APP-AWSMgmt-Okta-DBA"
}

variable "NSP_GRP" {
  description = "This is Group for Network Operation Team"
  type        = string
  default     = "GG-APP-AWSMgmt-Okta-ENS"
}

variable "IR_GRP" {
  description = "This is Group for Team required Read Access"
  type        = string
  default     = "GG-APP-AWSMgmt-Okta-InfraRead"
}

variable "SEC_GRP" {
  description = "This is Group for Infra Security Operation Team"
  type        = string
  default     = "GG-APP-AWSMgmt-Okta-InfraSec"
}

variable "New_AC_NUMBER" {}