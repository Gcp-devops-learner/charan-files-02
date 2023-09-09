variable "name" {
  type        = string
  description = "Name of your DNS zone."
  default = "private-dns-zone"
}

variable "project_id" {
  description = "The project ID to manage the DNS resources."
  type        = string
  default = "billing-demo-379906"

}

variable "private" {
  type        = bool
  description = "Visibility of your zone."
  default     = true
}

variable "region" {
  type        = string
  description = "Name of your region"
  default = "us-central1"
}

variable "records" {
  type = map(object({
    name    = string
    type    = string
    rrdatas = list(string)
    ttl     = number
  }))
  description = "List of your DNS records."
  default     = {}
}

variable "cnamerecords" {
  type = map(object({
    name_1    = string
    type_1    = string
    rrdatas_1 = list(string)
    ttl_1     = number
  }))
  description = "List of your DNS records."
  default     = {}
}

