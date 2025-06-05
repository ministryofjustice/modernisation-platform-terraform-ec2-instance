resource "aws_security_group" "test" {
  #checkov:skip=CKV2_AWS_5:
  #checkov:skip=CKV_AWS_25:
  #checkov:skip=CKV_AWS_24:
  #checkov:skip=CKV_AWS_260:
  #checkov:skip=CKV_AWS_382:
  name        = "Terratest-SG${random_id.test_id.hex}"
  description = "Test SG for Terratest"
  vpc_id      = data.aws_vpc.shared.id
  ingress {
    from_port   = 0
    to_port     = 6000
    protocol    = "tcp"
    cidr_blocks = ["10.26.0.0/21"]
    description = "Test SG for Terratest"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.26.0.0/21"]
    description = "Test SG for Terratest"

  }

  tags = {
    Name = "test"
  }
}

data "aws_subnet" "private_subnets_a" {
  vpc_id = data.aws_vpc.shared.id
  filter {
    name   = "tag:Name"
    values = ["*platforms-test-general-private-eu-west-2a*"]
  }
}
