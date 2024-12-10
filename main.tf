# Common module
module "router0" {
  source = "./common"
  providers = {
    routeros = routeros.router0
  }
}
