resource "digitalocean_project" "applio" {
  name = "Applio"
  
  resources = concat([ 
    digitalocean_database_cluster.postgres_dev.urn,
    digitalocean_database_cluster.postgres.urn,
  ], var.project_resource_urns)
}