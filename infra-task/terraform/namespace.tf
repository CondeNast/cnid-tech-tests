resource "kubernetes_namespace" "hello-world-ns" {
  metadata {
    name = var.namespace
  }
}
