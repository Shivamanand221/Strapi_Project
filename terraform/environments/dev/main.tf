module "vpc"{
    source = "../../modules/vpc"
    vpc_cidr = var.vpc_cidr
    availability_zone = var.availability_zone
    public_subnet_cidr = var.public_subnet_cidr
    environment = var.environment
}

module "security_group" {
    source = "../../modules/security-group"
    vpc_id = module.vpc.vpc_id
    environment = var.environment
}