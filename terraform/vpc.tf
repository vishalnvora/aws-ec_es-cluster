
variable "vpc_id" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
}  
data "aws_subnet_ids" "selected" {
  vpc_id = var.vpc_id
}

resource "aws_subnet" "example" {
  vpc_id            = data.aws_vpc.selected.id
  availability_zone = "us-east-2a"
  cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)
}