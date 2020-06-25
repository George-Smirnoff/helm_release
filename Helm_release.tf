data "helm_repository" "stable" {
  name = "stable"
#  url  = "https://kubernetes-charts.storage.googleapis.com"
  url  = "https://github.com/George-Smirnoff/helm_release/"
}

/* resource "helm_release" "k8s_dashboard" {
  namespace  = "kube-system"
  name       = "kubernetes-dashboard"
  repository = data.helm_repository.stable.metadata[0].name
  chart      = "kubernetes-dashboard"
} */