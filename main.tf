module "EC2" {
  source = "./modules"

  region = var.region

  name = var.name
  image_id = var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  user_data = var.user_data

  db_allocated_storage = var.db_allocated_storage
  db_storage_type = var.db_storage_type
  db_engine = var.db_engine
  db_engine_version = var.db_engine_version
  db_instance_class = var.db_instance_class
  db_port = var.db_port
  db_name = var.db_name
  db_identifier = var.db_identifier
  db_username = var.db_username
  db_password = var.db_password
  db_parameter_group_name = var.db_parameter_group_name
  db_skip_final_snapshot = var.db_skip_final_snapshot

  vpc_cidr = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  vpc-tags = var.vpc-tags

  app_elb_cross_zone_load_balancing = var.app_elb_cross_zone_load_balancing
  app_elb_health_check_healthy_threshold = var.app_elb_health_check_healthy_threshold
  app_elb_health_check_unhealthy_threshold = var.app_elb_health_check_unhealthy_threshold
  app_elb_health_check_timeout = var.app_elb_health_check_timeout
  app_elb_health_check_interval = var.app_elb_health_check_interval
  app_elb_health_check_target = var.app_elb_health_check_target
  app_elb_listener_lb_port = var.app_elb_listener_lb_port
  app_elb_listener_lb_protocol = var.app_elb_listener_lb_protocol
  app_elb_listener_instance_port = var.app_elb_listener_instance_port
  app_elb_listener_instance_protocol = var.app_elb_listener_instance_protocol

  subnet_cidr = var.subnet_cidr
  subnet_availability_zone = var.subnet_availability_zone
  subnet1_cidr = var.subnet1_cidr
  subnet1_availability_zone = var.subnet1_availability_zone

  route_cidr_block =  var.route_cidr_block
  route_tags = var.route_tags
  
}



