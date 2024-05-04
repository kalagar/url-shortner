data "aws_subnets" "default_vpc" {
  filter {
    name   = "vpc-id"
    values = ["vpc-04b45f35f306435dc"]
  }
}

data "aws_security_group" "default_security_group" {
  id = "sg-0bbf1cd2d6942980b"
}
