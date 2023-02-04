#Create VPC
resource "aws_vpc" "appvpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.instance_tenancy}"
  tags             = "${var.vpc-tags}"
}

# Create Internet Gateway 
resource "aws_internet_gateway" "appgateway" {
  vpc_id = "${aws_vpc.appvpc.id}"
}

# Create subnets 
resource "aws_subnet" "appsubnet" {
  vpc_id                  = "${aws_vpc.appvpc.id}"
  cidr_block              = "${var.subnet_cidr}"
  map_public_ip_on_launch = false
  availability_zone       = "${var.subnet_availability_zone}"

  tags = {
    Name = "app subnet"
  }
}
resource "aws_subnet" "appsubnet1" {
  vpc_id                  = "${aws_vpc.appvpc.id}"
  cidr_block              = "${var.subnet1_cidr}"
  map_public_ip_on_launch = false
  availability_zone       = "${var.subnet1_availability_zone}"

  tags = {
    Name = "app subnet 1"
  }
}


# Create subnets group 
resource "aws_db_subnet_group" "db_subnet_group" {
  subnet_ids = ["${aws_subnet.appsubnet.id}","${aws_subnet.appsubnet1.id}"]

  tags = {
    Name = " DB subnet group"
  }
}

# Create Route Table
resource "aws_route_table" "route" {
  vpc_id                  = "${aws_vpc.appvpc.id}"

  route {
        cidr_block = var.route_cidr_block
        gateway_id = "${aws_internet_gateway.appgateway.id}"
    }

  tags = "${var.route_tags}"
}

resource "aws_security_group" "appsg" {

  vpc_id                  = aws_vpc.appvpc.id

  # Inbound Rules
  # HTTP access from anywhere
  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound Rules
  # Internet access to anywhere
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Creating Security Group for ELB
resource "aws_security_group" "appsg1" {
  name        = "App Security Group"
  description = "App Module"
  vpc_id      = aws_vpc.appvpc.id

  # Inbound Rules
  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTPS access from anywhere
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound Rules
  # Internet access to anywhere
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Associate Route Table
resource "aws_route_table_association" "rt1" {
    subnet_id = "${aws_subnet.appsubnet.id}"
    route_table_id = "${aws_route_table.route.id}"
}
