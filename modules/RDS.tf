resource "aws_db_instance" "database_instance" {
  allocated_storage = var.db_allocated_storage
  storage_type = var.db_storage_type
  engine = var.db_engine
  engine_version = var.db_engine_version
  instance_class = var.db_instance_class
  port = var.db_port
  vpc_security_group_ids = ["${aws_security_group.appsg.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.db_subnet_group.name}"
  db_name = var.db_name
  identifier = var.db_identifier
  username = var.db_username
  password = var.db_password
  parameter_group_name = var.db_parameter_group_name
  skip_final_snapshot = var.db_skip_final_snapshot
  tags = {
        Name = "database_instance"
    }
}