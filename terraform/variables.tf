### MANDATORY ###
variable "es_cluster" {
  description = "Name of the elasticsearch cluster, used in node discovery"
  type = "string"
  default  = "es-prod-cluster"
}

variable "aws_region" {
  default = "us-east-2"
}


variable "vpc_id" {
  description = "VPC ID to create the Elasticsearch cluster in"
  type = "string"
  default = "vpc-308f4a54"
}

variable "availability_zones" {
  type = "list"
  description = "AWS region to launch servers; if not set the available zones will be detected automatically"
  default = ["us-east-2a","us-east-2b"]
}

# If cluster mode then make it value "true"
variable "cluster_mode" {
  default = "true"
}

variable "vpc_subnets_private" {
  type = "list"
  description = "vpc_subnet_private"
  default = ["subnet-addf74db","subnet-e74af383"]
}

variable "key_name" {
  description = "Key name to be used with the launched EC2 instances."
  type = "string"
  default = "elasticsearch"
}

variable "environment" {
  type = "string"  
  default = "default"
}

variable "data_instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "singlenode_instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "master_instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "elasticsearch_volume_size" {
  type = "string"
  default = "10" # gb
}

variable "volume_name" {
  type = "string"
  default = "/dev/xvdh"
}

variable "volume_encryption" {
  type = "bool"
  default = true
}

variable "elasticsearch_data_dir" {
  type = "string"
  default = "/opt/elasticsearch/data"
}

variable "elasticsearch_logs_dir" {
  type = "string"
  default = "/var/log/elasticsearch"
}

# cluster data node heap size 
variable "data_heap_size" {
  type = "string"
  default = "3g"
}


# default elasticsearch heap size
variable "singlenode_heap_size" {
  type = "string"
  default = "3g"
}

variable "master_heap_size" {
  type = "string"
  default = "2g"
}

variable "masters_count" {
  type = "init"
  default = "1"
}

variable "datas_count" {
  type = "init"
  default = "2"
}

variable "clients_count" {
  type = "init"
  default = "1"
}

# whether or not to enable x-pack security on the cluster
variable "security_enabled" {
  type = "bool"
  default = "false"
}

# client nodes have nginx installed on them, these credentials are used for basic auth
variable "client_user" {
  type = "string"
  default = "admin"
}
variable "client_pwd" {
  type = "string"
  default = "changeit1"
}

# the ability to add additional existing security groups.
variable "additional_security_groups" {
  default = ""
}
