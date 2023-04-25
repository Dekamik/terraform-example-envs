resource "digitalocean_project" "applio" {
  name = "Applio"
  
  resources = [ 
    digitalocean_database_cluster.postgres_dev.urn,
    digitalocean_database_cluster.postgres.urn,

    module.applio_dev.droplet_urn,
    module.applio_prod.droplet_urn
  ]
}