output "ami_details" {
  value = data.aws_ami.myamiid.id
}

output "subnet_details" {
  value = data.aws_subnet.mysubnet.id
}

output "security_group_name" {
  value = data.aws_security_group.defaultsg.id
}

output "my_security_group_name" {
  value = data.aws_security_group.mysg.id
}
output "localvar1" {
  value = local.var1
}

output "localvar2" {
  value = local.var2
}
output "publicip" {
  value = aws_instance.ec2instance.public_ip
}

output "privateip" {
  value = aws_instance.ec2instance.private_ip
}

output "forlistout" {
  value = [for s in var.forlist: upper(s) if s != ""]
}
output "uppercase" {
  value = upper(var.forlist[0])
}
