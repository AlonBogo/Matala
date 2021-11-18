module "SqlServer" {
  source = "./Modules/SqlServer"
  sql_server_name = "workplease"
}

module "VirtualNetwork" {
  source = "./Modules/VirtualNet"
  resource_group_name = module.SqlServer.myRG_name
  location = module.SqlServer.location
}

module "WebServer" {
  source = "./Modules/WindowsWeb"
  network_interface_id = module.VirtualNetwork.myNI_id
  resource_group_name = module.SqlServer.myRG_name
  location = module.SqlServer.location
}



