data "aws_ip_ranges" "cloudfront" {
#services = ["cloudfront"]
 regions  = ["eu-west-1", "eu-central-1"]
  services = ["ec2"]
}

locals {
cloudfront_ips = data.aws_ip_ranges.cloudfront.cidr_blocks
cloudfront_sg_count = "${ceil((length(data.aws_ip_ranges.cloudfront.cidr_blocks) * 1.0) / 50)}"
}
resource "aws_security_group" "cloudfront" {
  name        = "cloudfront-security-group-${var.vpc_id}-${count.index + 1}"
  description = "Cloudfront Security Group for Alb and ELB"
  vpc_id      =  var.vpc_id
  count       = "${local.cloudfront_sg_count}"

  # allow all traffic from cloudfront ip ranges
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = "${slice(local.cloudfront_ips, (count.index * 50), min((count.index * 50) + 50, length(local.cloudfront_ips)))}"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Cloudfront SG ${count.index + 1}"
  }
}


/*
output "op1" {
value=local.cloudfront_ips



}


output "op2" {
value=local.cloudfront_sg_count
}
*/
