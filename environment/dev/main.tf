

module "resource_group" {
  source   = "../../child_module/Azure_resource_group"
  rgs_venu = var.rgs_venu
}
module "vnet_v" {
  depends_on = [module.resource_group]
  source     = "../../child_module/Azure_VNet"
  VNetm      = var.VNetm

}
module "subnet" {
  depends_on = [module.vnet_v]
  source     = "../../child_module/Azure_subnet"
  subnet_V   = var.subnet_v
}
module "public_ip" {
  depends_on = [module.subnet]
  source     = "../../child_module/Azure_public_ip"
  public_ip  = var.public_ip
}

# module "Bastion_host" {
#   depends_on   = [module.public_ip]
#   source       = "../child_module/Azure_bastion"
#   Bastion_host = var.Bastion_host
# }
