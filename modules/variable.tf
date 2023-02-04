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
}

variable "user_data" {
  type = string
  description = "name of user data file"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC."
}

variable "instance_tenancy" {
  type = string
  description = "The instance tenancy for the VPC."
}

variable "vpc-tags" {
  type = map(string)
  description = "The tags for the VPC."
}

# database launch configuration
variable "db_name" { 
  type = string 
  description = "database name"
}

variable "db_allocated_storage" { 
  type = number 
  description = "database allocated storage "
}

variable "db_storage_type" { 
  type = string 
  description = "database storage type"
}

variable "db_engine" { 
  type = string 
  description = "database engine "
}

variable "db_engine_version" { 
  type = string 
  description = "database engine version "
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
}

variable "db_skip_final_snapshot" { 
  type = bool
  description = "database skip final snapshot "
}

variable "app_elb_cross_zone_load_balancing" {
  type = bool
}

variable "app_elb_health_check_healthy_threshold" {
  type = number
}

variable "app_elb_health_check_unhealthy_threshold" {
  type = number
}

variable "app_elb_health_check_timeout" {
  type = number
}

variable "app_elb_health_check_interval" {
  type = number
}

variable "app_elb_health_check_target" {
  type = string
}

variable "app_elb_listener_lb_port" {
  type = number
}

variable "app_elb_listener_lb_protocol" {
  type = string
}

variable "app_elb_listener_instance_port" {
  type = number
}

variable "app_elb_listener_instance_protocol" {
  type = string
}


variable "subnet_cidr" {
  description = "CIDR block for the first subnet."
  type        = string
}

variable "route_cidr_block" {
  type = string
  description = "cidr block of the route table"
}

variable "route_tags" {
  type = map(string)
  description = "A map of tags to assign to the route table"
}

variable "subnet_availability_zone" {
  description = "Availability zone for the first subnet."
  type        = string
}

variable "subnet1_cidr" {
  description = "CIDR block for the second subnet."
  type        = string
}

variable "subnet1_availability_zone" {
  description = "Availability zone for the second subnet."
  type        = string
}