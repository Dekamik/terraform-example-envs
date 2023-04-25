module "applio_dev" {
  source = "git@github.com:Dekamik/terraform-example-base.git?ref=0.1.0"

  env = "dev"
  postgres_db_cluster_id = digitalocean_database_cluster.postgres_dev.id
}
