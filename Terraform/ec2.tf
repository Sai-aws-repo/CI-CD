resource "aws_instance" "pipeline_server"{
    ami = "data.aws_ami.pipeline_ami"
    instance_type = "t2.micro"
    key_name = "Ansible.pem"
    vpc_security_group_ids = [aws_security_group.pipeline_sg.id]
    subnet_id = "data"
    tags = {
        Env = "Dev"
    }
}
