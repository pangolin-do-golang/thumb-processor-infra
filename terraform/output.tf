output "queue_arn" {
  value = module.sqs.queue_arn
}

output "queue_id" {
  value = module.sqs.queue_id

}

output "queue_arn_static" {
  value = module.sqs.queue_arn_static

}

output "queue_name" {
  value = module.sqs.queue_name

}

output "queue_url" {
  value = module.sqs.queue_url

}

output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.s3_bucket.s3_bucket_id
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.s3_bucket.s3_bucket_arn
}

output "s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = module.s3_bucket.s3_bucket_region
}

output "sqs_dlq_arn" {
  description = "The ARN of the SQS queue"
  value       = module.sqs.dead_letter_queue_arn
}

output "sqs_dlq_name" {
  description = "The name of the SQS queue"
  value       = module.sqs.dead_letter_queue_name
}

output "sqs_dlq_id" {
  description = "The URL for the created Amazon SQS queue"
  value       = module.sqs.dead_letter_queue_id
}