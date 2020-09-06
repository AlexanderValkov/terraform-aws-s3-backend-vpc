region         = "us-east-1"
vpc_cidr_block = "10.0.0.0/16"
vpc_tag_Name   = "prod"

subnet = {
  public = [
    {
      az_postfix      = "a"
      tags = {
        Name = "public_a"
        "kubernetes.io/role/elb" = "1"
      }
    },
    {
      az_postfix      = "b"
      tags = {
        Name = "public_b"
        "kubernetes.io/role/elb" = "1"
      }
    },
    {
      az_postfix      = "c"
      tags = {
        Name = "public_c"
        "kubernetes.io/role/elb" = "1"
      }
    }
  ]
  private = [
    {
      az_postfix      = "a"
      tags = {
        Name = "private_a"
        "kubernetes.io/role/internal-elb" = "1"
      }
    },
    {
      az_postfix      = "b"
      tags = {
        Name = "private_b"
        "kubernetes.io/role/internal-elb" = "1"
      }
    },
    {
      az_postfix      = "c"
      tags = {
        Name = "private_c"
        "kubernetes.io/role/internal-elb" = "1"
      }
    }
  ]
}
