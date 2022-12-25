variable "ami_id" {
  type = string
  description = "AMI ID"
  validation {
    condition = length(var.ami_id) == 21 && startswith(var.ami_id, "ami-")
    error_message = "Please give correct ami id. Length of the id should be 21 characters and should start with ami-"
  }
}
variable "instancecount" {
  type = number
  default = 2
  
}
variable "instancetype" {
  type = string
  description = "Define instance type"
  default = "t2.medium"
}

variable "keyname" {
  type = string
  description = "Instance Key Name"
  default = "Jenkins"
}

variable "publicip" {
  type = bool
  description = "Associate public Ip to VM"
  default = true
}

variable "tag" {
  type = map(string)
  description = "Tag elements"
  default = {
    Name        = "Terraform Demo Server"
    Environment = "Demo Environment"
  }
}
variable "region" {
  type = string
  description = "AWS region"
  default = "us-east-1"
}

/*variable "accesskey" {
  type = string
  description = "Access key"
  sensitive = true
}
variable "secretkey" {
  type = string
  description = "Secret key"
  sensitive = true
}
*/
variable "forlist" {
  type = list(string)
  default = [ "one", "two","three", "","four" ]
}