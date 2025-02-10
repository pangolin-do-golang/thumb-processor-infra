module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "4.2.1"

  name = var.queue_name

  fifo_queue          = true
  create_queue_policy = true

  queue_policy_statements = {
    account = {
      sid = "AccountReadWrite"
      actions = [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
      ]
      principals = [
        {
          type        = "AWS"
          identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
        }
      ]
    }
  }

  create_dlq = true
  create_dlq_queue_policy = true
  dlq_queue_policy_statements = {
    account = {
      sid = "AccountReadWrite"
      actions = [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
      ]
      principals = [
        {
          type        = "AWS"
          identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
        }
      ]
    }
  }

  tags = {
    Environment = var.env
    ManagedBy   = "Terraform"
  }

}