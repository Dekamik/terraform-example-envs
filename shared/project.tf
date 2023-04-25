resource "digitalocean_project" "applio" {
  name = "Applio"
  
  resources = [ 
    digitalocean_database_cluster.postgres_dev.urn,
    digitalocean_database_cluster.postgres.urn,
  ]
}