resource "aws_lambda_function" "visitor" {
  function_name = "visitor-counter"
  role          = aws_iam_role.lambda_role.arn
  runtime       = "python3.9"
  handler       = "visitor.lambda_handler"

  filename = "lambda.zip"
}
