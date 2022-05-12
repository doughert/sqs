data "aws_iam_policy_document" "amazing_sqs_policy" {
  statement {
    principals {
      identifiers = ["*"]
      type        = "AWS"
    }
    actions   = ["sqs:*"]
    resources = [aws_sqs_queue.amazing_queue.arn]
    effect = "Allow"
  }
}
