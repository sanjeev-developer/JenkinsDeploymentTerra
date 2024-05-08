module "network" {
  source              = "github.com/sanjeev-developer/ModuleTerraform.git/network_module"
  vpc_name            = var.vpc_name
  subnet_cidr_01      = var.subnet_cidr_01
  subnet_cidr_02      = var.subnet_cidr_02
  vpc_cidr            = var.vpc_cidr
  gateway_name        = var.gateway_name
  subnet_name_01      = var.subnet_name_01
  subnet_name_02      = var.subnet_name_02
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
  cidr_route          = var.cidr_route
  route_table_name    = var.route_table_name
}

module "security_module" {
  source               = "github.com/sanjeev-developer/ModuleTerraform.git/security_module"
  vpc_id               = module.network.vpc_ids
  security_group_name  = var.security_group_name
  security_description = var.security_description
}

module "load_balancer" {
  source          = "github.com/sanjeev-developer/ModuleTerraform.git/loadbalancer_module"
  subnet_id_01    = module.network.subnet_id_001
  subnet_id_02    = module.network.subnet_id_002
  security_group  = module.security_module.aws_security_id
  vpc_id          = module.network.vpc_ids
  lb_name         = var.lb_name
  protocol_name   = var.protocol_name
  lb_type         = var.lb_type
  aws_lb_name     = var.aws_lb_name
  listener_type   = var.listener_type
  listener_port   = var.listener_port
  aws_lb_internal = var.aws_lb_internal
}

module "autoscaling_module" {
  source            = "github.com/sanjeev-developer/ModuleTerraform.git/autoscaling_module"
  subnet_id_01      = module.network.subnet_id_001
  subnet_id_02      = module.network.subnet_id_002
  security_group    = module.security_module.aws_security_id
  lb_target_group   = module.load_balancer.lb_target_group
  ec2_template_name = var.ec2_template_name
  cpu_type          = var.cpu_type
}