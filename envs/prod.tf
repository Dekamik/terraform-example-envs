module "applio_prod" {
  source = "git@github.com:Dekamik/terraform-example-base.git?ref=0.1.0"

  env = "prod"
  postgres_db_cluster_id = digitalocean_database_cluster.postgres.id
}
