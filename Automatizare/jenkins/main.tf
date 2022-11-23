provider "aws" {
    region = "us-east-1"
    access_key = "AKIAWJPLFRENKHJOQOZP"
    secret_key = "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"
}
variable "name" {
    description = "Name the istance on deploy"
}
resource "aws_instance" "jenkins" {
    ami = "ami-0ee23bfc74a881de5"
    instance_type = "t2.micro"
    key_name = "proiect"

    tags ={
        Name = "${var.name}"
    }

}
