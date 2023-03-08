data "aws_vpc" "shared" {
  tags = {
    "Name" = "${var.networking[0].business-unit}-${local.environment}"
  }
}

data "aws_kms_key" "default_ebs" {
  key_id = "alias/aws/ebs"
}

# combine ec2-common policy documents
data "aws_iam_policy_document" "ec2_common_combined" {
  source_policy_documents = [
    data.aws_iam_policy_document.ec2_policy.json,
  ]
}

# custom policy for SSM as managed policy AmazonSSMManagedInstanceCore is too permissive
data "aws_iam_policy_document" "ec2_policy" {
  statement {
    #checkov:skip=CKV_AWS_109:
    #checkov:skip=CKV_AWS_111:

    sid    = "CustomEc2Policy"
    effect = "Allow"
    actions = [
      "ec2:*"
    ]
    resources = ["*"] #tfsec:ignore:aws-iam-no-policy-wildcards
  }
}
