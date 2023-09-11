resource "aws_instance" "BACKEND-SERVER" {
    ami = "ami-0c38efb4f5f15205f"
    instance_type = "t2.micro"
    key_name = aws_key_pair.ssh_key.key_name
    count=4

    tags = {
        Name = "TestInstance"

    }
}

resource "aws_instance" "FRONTENT-SERVER" {
    ami = "ami-0c38efb4f5f15205f"
    instance_type = "t2.micro"
    key_name = aws_key_pair.ssh_key.key_name
    count=2

    tags = {
        Name = "Another Instance"

    }
}