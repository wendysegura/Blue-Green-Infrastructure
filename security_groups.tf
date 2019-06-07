#Security Group for the VPC using it's VPC ID
#Contains two rules one for Inbound other Outbound traffic
#From/To Port: the range the rule applies to 
#Protocol: HTTP, TCP or -1:which applies to both TCP/HTTP
#CIDR Blocks: list of CIDR block that are enabled by the rule. In this case all ipv4 traffic.


resource "aws_security_group" "terraform-bluegreen" {
  description = "Terraform Blue/Green"
  vpc_id      = "${var.vpc_id}"
  name        = "terraform-bluegreen-v${var.infrastructure_version}"

  tags = {
    Name = "Terraform Blue/Green (v${var.infrastructure_version})"
  }
}

resource "aws_security_group_rule" "terraform-bluegreen-inbound" {
  type              = "ingress"
  security_group_id = "${aws_security_group.terraform-bluegreen.id}"
  from_port         = -1
  to_port           = 0
  protocol          = "-1"

  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "terraform-bluegreen-outbound" {
  type              = "egress"
  security_group_id = "${aws_security_group.terraform-bluegreen.id}"
  from_port         = -1
  to_port           = 0
  protocol          = "-1"

  cidr_blocks = ["0.0.0.0/0"]
}
