output "elb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = module.EC2.elb_dns_name
}