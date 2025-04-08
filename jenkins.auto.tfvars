vpc_cidr_block        = "10.0.0.0/16"
vpc_instance_tenancy  = "default"

pub_subnet1_az        = "us-east-1a"
pub_subnet2_az        = "us-east-1b"
pub_subnet3_az        = "us-east-1c"

priv_subnet1_az       = "us-east-1a"
priv_subnet2_az       = "us-east-1b"

pub_subnet1_cidr_block = "10.0.1.0/24"
pub_subnet2_cidr_block = "10.0.2.0/24"
pub_subnet3_cidr_block = "10.0.5.0/24"

priv_subnet1_cidr_block = "10.0.6.0/24"
priv_subnet2_cidr_block = "10.0.7.0/24"

pub-RT1_cidr_block    = "0.0.0.0/0"
pub-RT2_cidr_block    = "0.0.0.0/0"
pub-RT3_cidr_block    = "0.0.0.0/0"

priv-RT1_cidr_block   = "10.0.0.0/16"
priv-RT2_cidr_block   = "10.0.0.0/16"

ami                   = "ami-00a929b66ed6e0de6"
key_name              = "Pekay-keys"

tag_overlay = {
    Name = "ASG_network"
    Env = "dev"
    Project = "ASG"
    PM = "top Guru"

}
