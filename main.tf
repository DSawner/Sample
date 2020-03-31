

locals {
  ZONE     = "us-south-1"
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

