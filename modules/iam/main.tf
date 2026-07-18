resource "aws_iam_role" "this" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      { Action = "sts:AssumeRole", Effect = "Allow", Principal = { Service = "ec2.amazonaws.com" } }
    ]
  })

tags = merge(
  {
    Name = var.role_name
  },
  var.tags
)
}

resource "aws_iam_instance_profile" "this" {
  name = var.profile_name
    role = aws_iam_role.this.name
    tags = merge(
      {
        Name = var.profile_name
      },
      var.tags
    )
}


resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = "IAM Policy for the IAM Role"
  policy      = aws_iam_policy_document.this.json
}


resource "aws_iam_policy_attachment" "this" {
  name       = var.profile_name
  users      = [aws_iam_user.user.name]
  roles      = [aws_iam_role.this.name]
  policy_arn = aws_iam_instance_profile.this
}