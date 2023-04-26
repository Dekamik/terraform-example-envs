output "vpc_uuid" {
  value = digitalocean_vpc.applio.id
}

output "vpc_urn" {
  value = digitalocean_vpc.applio.urn
}

output "postgres_cluster_id" {
  value = digitalocean_database_cluster.postgres.id
}

output "postgres_cluster_urn" {
  value = digitalocean_database_cluster.postgres.urn
}

output "mongo_cluster_id" {
	value = digitalocean_database_cluster.mongo.id
}

output "mongo_cluster_urn" {
  value = digitalocean_database_cluster.mongo.urn
}
