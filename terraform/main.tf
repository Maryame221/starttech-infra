module "networking" {
  source = "./modules/networking"

  project_name = var.project_name
}

module "compute" {
  source = "./modules/compute"

  project_name       = var.project_name
  vpc_id             = module.networking.vpc_id
  public_subnet_ids  = module.networking.public_subnet_ids
  private_subnet_ids = module.networking.private_subnet_ids
}