resource "aws_elb" "clb" {
  name    = var.clb-name
  subnets = [var.sub-01-id, var.sub-02-id]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  instances                   = [var.web-01-id, var.web-02-id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400
  security_groups             = [var.sg-clb-id]

  tags = {
    Name = var.clb-name
  }
}