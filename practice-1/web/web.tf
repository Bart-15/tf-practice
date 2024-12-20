
resource "aws_instance" "web" {
    ami = "ami-04a5ce820a419d6da"
    instance_type = "t2.micro"
    security_groups = [module.sg.sg_name]
    user_data = file("./web/simpleWeb.sh")
    tags = {
        Name = "Web Server"
    }
}

output "pub_ip" {
    value = module.eip.PublicIP
}

module "eip" {
    source = "../eip"
    instance_id = aws_instance.web.id
}

module "sg" {
    source = "../sg"
}