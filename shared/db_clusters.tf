resource "digitalocean_database_cluster" "postgres" {
  name       = "postgres-cluster"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-2gb"
  region     = "fra1"
  node_count = 1
}

resource "digitalocean_database_cluster" "mongo" {
  name       = "mongo-cluster"
  engine     = "mongodb"
  version    = "4"
  size       = "db-s-1vcpu-1gb"
  region     = "fra1"
  node_count = 1
}
