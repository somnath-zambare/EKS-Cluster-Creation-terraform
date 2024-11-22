data "aws_iam_policy_document" "eks_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
}

data "aws_subnet" "subnet-1" {
  filter {
    name   = "defaultForAz"
    values = ["true"]
  }

    filter {
    name   = "availability-zone"
    values = [var.az1]
  }
}

data "aws_subnet" "subnet-2" {
  filter {
    name   = "defaultForAz"
    values = ["true"]
  }

    filter {
    name   = "availability-zone"
    values = [var.az2]
  }
}