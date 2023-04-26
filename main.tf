module "shared" {
  source = "./shared"
}

module "applio_admin_dev" {
  source = "git@github.com:Dekamik/terraform-example-base.git//applio-admin?ref=0.2.0"

  env = "dev"
  postgres_cluster_id = module.shared.postgres_cluster_id
  vpc_uuid            = module.shared.vpc_uuid
}

module "applio_admin_prod" {
  source = "git@github.com:Dekamik/terraform-example-base.git//applio-admin?ref=0.2.0"

  env = "prod"
  postgres_cluster_id = module.shared.postgres_cluster_id
  vpc_uuid            = module.shared.vpc_uuid
}

module "applio_data_dev" {
  source = "git@github.com:Dekamik/terraform-example-base.git//applio-data?ref=0.2.0"

  env = "dev"
  postgres_cluster_id = module.shared.postgres_cluster_id
  mongo_cluster_id    = module.shared.mongo_cluster_id
  vpc_uuid            = module.shared.vpc_uuid
}

module "applio_data_prod" {
  source = "git@github.com:Dekamik/terraform-example-base.git//applio-data?ref=0.2.0"

  env = "prod"
  postgres_cluster_id = module.shared.postgres_cluster_id
  mongo_cluster_id    = module.shared.mongo_cluster_id
  vpc_uuid            = module.shared.vpc_uuid
}

resource "digitalocean_project" "applio" {
  name = "Applio"
  
  resources = [
    module.shared.postgres_cluster_urn,
    module.shared.mongo_cluster_urn,
    module.applio_admin_dev.droplet_urn,
    module.applio_admin_prod.droplet_urn,
    module.applio_data_dev.droplet_urn,
    module.applio_data_prod.droplet_urn
  ]
}
