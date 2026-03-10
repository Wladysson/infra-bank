variable "namespace" {
  description = "Kubernetes namespace where the service will be deployed"
  type        = string
}

variable "service_name" {
  type = string
}

variable "image" {
  type = string
}

variable "replicas" {
  type = number
}

variable "cpu_request" {
  type = string
}

variable "cpu_limit" {
  type = string
}

variable "memory_request" {
  type = string
}

variable "memory_limit" {
  type = string
}

variable "environment_variables" {
  type = map(string)
}