region = "eu-west-2"

name = "jengo"
image_id = "ami-08cd358d745620807"
instance_type = "t2.micro"
key_name = ""
user_data = "data.sh"

subnet_availability_zone = "eu-west-2c"
subnet1_availability_zone = "eu-west-2a"

db_name = "jengo_db"
db_instance_class = "db.t2.micro"
db_port = 3306
db_username = "username"
db_password = "password"