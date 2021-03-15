resource "aws_key_pair" "ssh-keys" {
  key_name = "devsecops-key"
  public_key = file("./keys/awskey.pub")
}

data "aws_ami" "imagem" {
  filter {
    name = "name"
    values = ["DevSecOps"]
  }
  owners = ["274436338696"]
}

resource "aws_instance" "vm-cyborg" {
  ami = data.aws_ami.imagem.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.firewall.id]
  key_name = aws_key_pair.ssh-keys.key_name
  user_data = file("./files/web.sh")
  tags = {Name = "Cyborg" }
}

output "ip-vm" {
  value = aws_instance.vm-cyborg.public_ip
}
