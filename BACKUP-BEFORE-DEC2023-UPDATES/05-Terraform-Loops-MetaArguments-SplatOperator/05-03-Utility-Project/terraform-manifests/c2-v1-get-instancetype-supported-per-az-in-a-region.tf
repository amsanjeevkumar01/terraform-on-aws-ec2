# Datasource
data "aws_ec2_instance_type_offerings" "my_ins_type1" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name   = "location"
    #values = ["ap-south-1a"]
    values = ["ap-south-1e"]
  }
  location_type = "availability-zone"
}


# Output
output "output_v1_1" {
  value = data.aws_ec2_instance_type_offerings.my_ins_type1.instance_types
}

