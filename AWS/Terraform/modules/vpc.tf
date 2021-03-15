

resource "aws_default_vpc" "default" {
  tags = { Name = "Default VPC" }
}

resource "aws_security_group" "firewall" {
  name   = "data_eng-fw"
  vpc_id = aws_default_vpc.default.id

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["189.120.74.214/32"]
  }

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "firewall-data-engineering" }

}