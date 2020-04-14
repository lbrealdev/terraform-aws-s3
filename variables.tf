# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# AWS_DEFAULT_REGION

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "bucket_name" {
  description = "The name of the bucket."
  type        = string
  default     = null
}

variable "region" {
  description = "The AWS region this bucket."
  type        = string
  default     = null
}

variable "versioning" {
  description = "A state of versioning."
  type        = bool
  default     = null
}

