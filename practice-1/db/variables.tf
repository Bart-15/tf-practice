variable "ami" {
  description = "An Amazon Machine Image (AMI) is an image that provides the software that is required to set up and boot an Amazon EC2 instance."
  type = string
  default = "ami-04a5ce820a419d6da"
}

variable "instance_type" {
  description = "IThe ID of the Amazon Machine Image (AMI) used to create the EC2 instance."
  type = string
  default = "t2.micro"
}
