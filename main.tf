module "shared" {
  source = "./shared"
}

module "applio_dev" {
  source = "git@github.com:Dekamik/terraform-example-base.git//applio?ref=0.1.1-alpha.3"

  env = "dev"
  postgres_db_cluster_id = module.shared.postgres_dev_cluster_id
}

module "applio_prod" {
  source = "git@github.com:Dekamik/terraform-example-base.git//applio?ref=0.1.1"

  env = "prod"
  postgres_db_cluster_id = module.shared.postgres_prod_cluster_id
}

resource "digitalocean_project_resources" "project_resources" {
  project = module.shared.project_id
  resources = [
    module.applio_dev.droplet_urn,
    module.applio_prod.droplet_urn
  ]
}
