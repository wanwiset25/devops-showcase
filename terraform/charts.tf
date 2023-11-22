resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "3.35.4"
  values           = [file("argocd.yaml")]
}


resource "helm_release" "metrics_server" {
  name             = "metrics-server"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "metrics-server"
  namespace        = "metrics-server"
  version          = "6.6.2"
  create_namespace = true

  set {
      name  = "apiService.create"
      value = "true"
  }
}