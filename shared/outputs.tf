output "postgres_prod_cluster_id" {
  value = digitalocean_database_cluster.postgres.id
}

output "postgres_dev_cluster_id" {
	value = digitalocean_database_cluster.postgres_dev.id
}
