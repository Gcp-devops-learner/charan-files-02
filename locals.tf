locals {
  dns_managed_zone = try(google_dns_managed_zone.dns-managed-zone[0], data.google_dns_managed_zone.dns-managed-zone[0])
  name = "test-dns-cloud"
  project_id = "gke-demo-379209"
  region = "us-central1"
  fqdn = "prash.cloud."
  
  records = {
    "rec1" = {
      name    = "test123"
      type    = "A"
      rrdatas = module.address.addresses
      ttl     = 60
    }
}
  cnamerecords = {
    "rec1" = {
      type_1    = "CNAME"
      rrdatas_1 = ["rds-magento2-production-formlabs-cloud-encrypted.cchlcddjm6zo.us-east-1.rds.amazonaws.com.prash.cloud."]
      ttl_1     = 300
    }
}

}



