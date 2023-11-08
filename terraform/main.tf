terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.16.0"  
    }
  }
}
provider "docker" {
  host = "unix:///var/run/docker.sock"  
}

resource "docker_network" "my_network" {
  name = "my-network"
}

resource "docker_container" "service1" {
  image = "service1"
  name  = "service1"
  ports {
    internal = 80
    external = 8001
  }
}

resource "docker_container" "service2" {
  image = "service2"
  name  = "service2"
  ports {
    internal = 80
    external = 8002
  }
}