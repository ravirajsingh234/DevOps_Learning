provider "aws" {
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
	region = "ap-south-1"
}

resource "aws_ec2_instance" "ec2_intance" {
	ami = "${var.ami_id}"
	count = "${var.number_of_instances}"
	subnet_id = "${var.subnet_id}"
	instance_type = ${var.instance_type}
}
