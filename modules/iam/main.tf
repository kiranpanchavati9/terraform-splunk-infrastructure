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

