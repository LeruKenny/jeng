variable "region" {
    type = string 
    description = "aws region for resources to be deployed"
}

variable "name" { 
  type = string 
  description = "name of Ec2 instance "
}

variable "image_id" { 
  type = string 
  description = "the ami type of instance to be deployed"
}

variable "instance_type" { 
  type = string 
  description = "size of instance to be deployed"
}

variable "key_name" { 
  type = string 
  description = "name of the key pair to be used"
} 

variable "associate_public_ip_address" {
  type = bool
  description = "to set up associate public ip address"
  default = true
}

variable "user_data" {
  type = string
  description = "name of user data file"
}


variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC."
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type = string
  description = "The instance tenancy for the VPC."
  default = "default"
}

variable "vpc-tags" {
  type = map(string)
  description = "The tags for the VPC."
  default = {
    Name = "App VPC"
  }
}

# database launch configuration
variable "db_name" { 
  type = string 
  description = "database name"
}

variable "db_allocated_storage" { 
  type = number 
  description = "database allocated storage "
  default = 20
}

variable "db_storage_type" { 
  type = string 
  description = "database storage type"
  default = "gp2"
}

variable "db_engine" { 
  type = string 
  description = "database engine "
  default = "mysql"
}

variable "db_engine_version" { 
  type = string 
  description = "database engine version "
  default = "5.7"
}

variable "db_instance_class" { 
  type = string 
  description = "database instance class "
}

variable "db_port" { 
  type = number
  description = "database port number "
}

variable "db_identifier" { 
  type = string
  description = "database identifier"
  default = "mysqldb"
}

variable "db_username" { 
  type = string
  description = "database username "
}

variable "db_password" { 
  type = string
  description = "database password "
}

variable "db_parameter_group_name" { 
  type = string
  description = "database parameter group name "
  default = "default.mysql5.7"
}

variable "db_skip_final_snapshot" { 
  type = bool
  description = "database skip final snapshot "
  default = true
}

variable "subnet_cidr" {
  description = "CIDR block for the first subnet."
  type        = string
  default = "10.0.1.0/24"
}


variable "route_cidr_block" {
  type = string
  description = "cidr block of the route table"
  default = "0.0.0.0/0"
}

variable "route_tags" {
  type = map(string)
  description = "A map of tags to assign to the route table"
  default = {
    Name = "Route to internet"
  }
}

variable "subnet_availability_zone" {
  description = "Availability zone for the first subnet."
  type        = string
}

variable "subnet1_cidr" {
  description = "CIDR block for the second subnet."
  type        = string
  default = "10.0.2.0/24"
}

variable "subnet1_availability_zone" {
  description = "Availability zone for the second subnet."
  type        = string
}