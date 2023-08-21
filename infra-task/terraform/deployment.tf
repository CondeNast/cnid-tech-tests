resource "kubernetes_deployment" "hello-world" {
  metadata {
    name      = "hello-world"
    namespace = var.namespace
  }
  spec {
    selector {
      match_labels = {
        "app" = "hello-world"
      }
    }
    template {
      metadata {
        labels = {
          "app" = "hello-world"
        }
      }
      spec {
        container {
          image = "${var.image-repo}:${var.image_version}"
          name  = "hello-world"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}
