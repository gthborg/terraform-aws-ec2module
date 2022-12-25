data "aws_ami" "myamiid" {
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20220218.3-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

data "aws_subnet" "mysubnet" {
  availability_zone = "us-east-1a"
  filter {
    name   = "vpc-id"
    values = ["vpc-565d352b"]
  }
}

data "aws_security_group" "defaultsg" {
  filter {
    name = "group-name"
    values = ["default"]
  }
    filter {
    name   = "vpc-id"
    values = ["vpc-565d352b"]
  }
}

data "aws_security_group" "mysg" {
  filter {
    name = "group-name"
    values = ["JenkinsSG"]
  }
}