provider "aws" {
  region  = "eu-west-1"
  profile = "default"
}

resource "aws_instance" "overbyte" {
  ami           = "ami-0dad359ff462124ca"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.overbyte.id
}
