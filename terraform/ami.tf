// Find the latest available AMI for Elasticsearch
data "aws_ami" "elasticsearch" {
  filter {
    name = "state"
    values = ["available"]
  }
  filter {
    name = "tag:ImageType"
    values = ["elasticsearch-packer-image"]
  }
  owners = ["102725665491"]
  most_recent = true
}

// Find the latest available AMI for the Kibana client node
data "aws_ami" "kibana_client" {
  filter {
    name = "state"
    values = ["available"]
  }
  filter {
    name = "tag:ImageType"
    values = ["kibana-packer-image"]
  }
  owners = ["102725665491"]
  most_recent = true
}