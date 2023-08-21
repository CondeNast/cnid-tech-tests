resource "kubernetes_service" "hello-world-svc" {
  metadata {
    name      = "hello-world-svc"
    namespace = var.namespace
  }
  spec {
    type = "LoadBalancer"
    port {
      port = 80
    }
    selector = {
      "app" = "hello-world"
    }
  }
}
