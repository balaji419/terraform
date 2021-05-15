resource "aws_vpc_peering_connection" "master_slave" {
  peer_vpc_id = "aws_vpc.jenkins_slave.id"
  vpc_id      = "aws_vpc.jenkins_master.id"
  auto_accept = true
  provider=aws.master
  peer_region=us-east-1
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}
