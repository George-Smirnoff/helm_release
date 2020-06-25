data "helm_repository" "stable" {
  name = "stable"
#  url  = "https://kubernetes-charts.storage.googleapis.com"
  url  = "https://raw.githubusercontent.com/George-Smirnoff/helm_release/master"
}

resource "helm_release" "k8s_cni" {
  namespace  = "kube-system"
  name       = "kubernetes-cni"
  repository = data.helm_repository.stable.metadata[0].name
  chart      = "kubernetes-cni"
}