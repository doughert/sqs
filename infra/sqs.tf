resource "aws_sqs_queue" "amazing_queue" {
	name = "amazing_queue"
}

resource "aws_sqs_queue_policy" "amazing_queue_policy" {
	queue_url = aws_sqs_queue.amazing_queue.id
	policy = data.aws_iam_policy_document.amazing_sqs_policy.json
}