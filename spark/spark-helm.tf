resource "helm_release" "spark" {
  name       = "spark"
  chart      = "spark"
  repository = "https://charts.bitnami.com/bitnami"
  namespace  = "spark"
  create_namespace = true

  set {
    name  = "replicaCount"
    value = 3
  }

  set {
    name  = "worker.replicaCount"
    value = 3
  }
}
