variable "queue_name" {
  description = "The name of the SQS queue"
  type        = string

}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string

}

variable "env" {
  description = "The environment"
  type        = string

}