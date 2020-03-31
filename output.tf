
output "vpc_id" {
  value = "${ibm_is_vpc.vpc.id}"
}

output "sshcommand" {
  value = "${ssh root@ibm_is_floating_ip.fip1.address}"
}
