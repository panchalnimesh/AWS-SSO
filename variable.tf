variable "COPS" {
  description = "This is Permission set for Cops"
  type        = string
  default     = "AdministratorAccess"
}

variable "DBA" {
  description = "This is Permission set for DBA"
  type        = string
  default     = "DatabaseAdministrator"
}

variable "NSP" {
  description = "This is Permission set for Network Team"
  type        = string
  default     = "NetworkAdministrator"
}

variable "InfraRead" {
  description = "This is Permission set for Indra Read"
  type        = string
  default     = "ViewOnlyAccess"
}

variable "SEC" {
  description = "This is Permission set for Security Team"
  type        = string
  default     = "SecurityAudit"
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

