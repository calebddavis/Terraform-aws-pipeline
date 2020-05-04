#modules are similar to main tf file but with no providor block
#the module will be ref in the main tf
resource "aws_instance" "examplevm" {
  ami           = var.ami
  instance_type = var.instancetype
  tags = {
    Name = var.vmname
  }
}