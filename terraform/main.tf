terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_network" "app_net" {
  name = "app_net"
}

resource "docker_image" "node_app" {
  name         = "node:18"
  keep_locally = false
}

resource "docker_container" "node" {
  name  = "node_app"
  image = docker_image.node_app.name
  networks_advanced {
    name = docker_network.app_net.name
  }
  ports {
    internal = 3000
    external = 3000
  }
  command = ["node", "/app/app.js"]

  volumes {
    host_path      = abspath("${path.module}/docker/app")
    container_path = "/app"
  }
}

resource "docker_image" "mongo" {
  name         = "mongo:4.4"
  keep_locally = false
}

resource "docker_container" "mongo" {
  name  = "mongo_db"
  image = docker_image.mongo.name
  networks_advanced {
    name = docker_network.app_net.name
  }
  ports {
    internal = 27017
    external = 27017
  }
}
