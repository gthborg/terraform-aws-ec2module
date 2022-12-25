resource "aws_instance" "ec2instance" {
  #ami                         = data.aws_ami.myamiid.id
  count = var.instancecount
  ami                         = var.ami_id #"ami-02e136e904f3da870"
  instance_type               = var.instancetype
  key_name                    = var.keyname
  subnet_id                   = data.aws_subnet.mysubnet.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [data.aws_security_group.mysg.id, data.aws_security_group.defaultsg.id]
  tags = var.tag
  lifecycle {
    create_before_destroy = true
  }
}


locals {
  var1 = "Sdfsdf"
  var2 = 2
}
