variable "env" {
  default = "prod"
}


variable "vpc_name" {
  default = "dev_vpc"
}

variable "aws_region" {
  default = "us-west-2"
}

variable "subnet_cidr_01" {
  default = "10.0.0.0/24"
}

variable "subnet_cidr_02" {
  default = "10.0.1.0/24"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}


variable "gateway_name" {
  default = "maingateway"
}

variable "subnet_name_01" {
  default = "SubnetTag001"
}

variable "subnet_name_02" {
  default = "SubnetTag002"
}

variable "availability_zone_a" {
  default = "us-west-2a"
}

variable "availability_zone_b" {
  default = "us-west-2b"
}

variable "cidr_route" {
  default = "0.0.0.0/0"
}

variable "route_table_name" {
  default = "routetableEc2"
}

variable "security_group_name" {
  default = "my-tera-security-group"
}

variable "security_description" {
  default = "My testing to create security group from terraform"
}

variable "lb_name" {
  type    = string
  default = "tera-targe-tgroup-lb"
}

variable "protocol_name" {
  type    = string
  default = "HTTP"
}

variable "lb_type" {
  type    = string
  default = "application"
}

variable "aws_lb_name" {
  type    = string
  default = "test-lb-tf"
}

variable "listener_type" {
  type    = string
  default = "forward"
}

variable "listener_port" {
  type    = string
  default = "80"
}

variable "aws_lb_internal" {
  type    = bool
  default = false
}

variable "ec2_template_name" {
  type    = string
  default = "my-ec2-template"
}

variable "cpu_type" {
  type    = string
  default = "t2.micro"
}

variable "s3_bucket_name" {
  type    = string
  default = "sanjeevterrastatefile"
}

variable "s3_bucket_region" {
  type    = string
  default = "us-west-2"
}

variable "s3_bucket_tfstate" {
  type    = string
  default = "terraform.tfstate"
}

variable "s3_acl" {
  type    = string
  default = "private"
}

variable "dynamo_db_tabel_name" {
  type    = string
  default = "sanjeev_dynamo_table_name"
}

