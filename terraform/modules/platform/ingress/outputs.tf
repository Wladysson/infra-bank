output "ingress_namespace" {
  value = kubernetes_namespace.ingress.metadata[0].name
}

output "alb_controller_release" {
  value = helm_release.aws_load_balancer_controller.name
}

output "nginx_release" {
  value = helm_release.nginx_ingress.name
}