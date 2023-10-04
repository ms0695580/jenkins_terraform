module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Nexus-tool"
  ami = "ami-0f98860b8bc09bd5c"
  instance_type          = "t2.medium"
  key_name               = "Shobha_2023_oct"
  monitoring             = true
  vpc_security_group_ids = ["sg-07180dcb48390e1bc"]
  user_data = file("nexus.sh")
}
