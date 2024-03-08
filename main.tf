module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  name = "single-instance"
  ami = "ami-0e670eb768a5fc3d4"

  
  key_name               = "three"
  monitoring             = true
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}