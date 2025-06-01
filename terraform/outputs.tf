output "node_url" {
  value = "http://localhost:${var.node_port}"
}

output "mongo_port" {
  value = var.mongo_port
}
