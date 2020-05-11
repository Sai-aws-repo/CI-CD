data "aws_subnet_ids" "pipeline_subnets"{
    vpc_id = aws_default_vpc.default.id
}
data "aws_ami" "pipeline_ami"{
    most_recent = true
    owners = ["amazon"]
    filter{
        name = "name"
        values = ["amzn2-ami-hvm-*"]
    }
}
