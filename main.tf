# Common module
module "router0" {
  source = "./common"
  providers = {
    routeros = routeros.router0
  }
}

module "router1" {
  source = "./common"
  providers = {
    routeros = routeros.router1
  }
}
