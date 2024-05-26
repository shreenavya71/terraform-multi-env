resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids =["sg-023bf366828368121"]     # allow ssh.id ---->security group ID
    instance_type = lookup(var.instance_type, terraform.workspace)
}