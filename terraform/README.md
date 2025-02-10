<!-- BEGIN_TF_DOCS -->


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | The environment | `string` | n/a | yes |
| <a name="input_queue_name"></a> [queue\_name](#input\_queue\_name) | The name of the SQS queue | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_queue_arn"></a> [queue\_arn](#output\_queue\_arn) | n/a |
| <a name="output_queue_arn_static"></a> [queue\_arn\_static](#output\_queue\_arn\_static) | n/a |
| <a name="output_queue_id"></a> [queue\_id](#output\_queue\_id) | n/a |
| <a name="output_queue_name"></a> [queue\_name](#output\_queue\_name) | n/a |
| <a name="output_queue_url"></a> [queue\_url](#output\_queue\_url) | n/a |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | The name of the bucket. |
| <a name="output_s3_bucket_region"></a> [s3\_bucket\_region](#output\_s3\_bucket\_region) | The AWS region this bucket resides in. |
| <a name="output_sqs_dlq_arn"></a> [sqs\_dlq\_arn](#output\_sqs\_dlq\_arn) | The ARN of the SQS queue |
| <a name="output_sqs_dlq_id"></a> [sqs\_dlq\_id](#output\_sqs\_dlq\_id) | The URL for the created Amazon SQS queue |
| <a name="output_sqs_dlq_name"></a> [sqs\_dlq\_name](#output\_sqs\_dlq\_name) | The name of the SQS queue |
<!-- END_TF_DOCS -->