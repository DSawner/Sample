provider "ibm" {
  generation = 2
  region = "us-south"
}

locals {
  BASENAME = "schematics" 
  ZONE     = "us-south-1"
}

resource ibm_is_vpc "vpc" {
  name = "${local.BASENAME}-vpc"
}

resource "ibm_is_vpc" "vpc" {
  name = "${var.name}-vpc"
}

resource "ibm_is_subnet" "subnet1" {
  name                     = "${var.name}-subnet"
  vpc                      = "${ibm_is_vpc.vpc.id}"
  zone                     = "${local.ZONE}"
  total_ipv4_address_count = 256
}
resource "ibm_is_security_group" "sg1" {
  name = "${local.BASENAME}-sg1"
  vpc  = "${ibm_is_vpc.vpc.id}"
}
