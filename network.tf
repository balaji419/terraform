resource "aws_vpc" "jenkins_master" {
  provider   = aws.master
  cidr_block = "10.27.0.0/16"
}



resource "aws_vpc" "jenkins_slave" {
  provider   = aws.slave
  cidr_block = "10.28.0.0/16"

}


resource "aws_internet_gateway" "jenkins_master" {
  vpc_id   = aws_vpc.jenkins_master.id
  provider = aws.master
  tags = {
    Name = "jm"
  }
}

resource "aws_internet_gateway" "jenkins_slave" {
  vpc_id   = aws_vpc.jenkins_slave.id
  provider = aws.slave
  tags = {
    Name = "js"
  }

}


data "aws_availability_zones" "master_vpc" {
  state    = "available"
  provider = aws.master

}

data "aws_availability_zones" "slave_vpc" {
  state    = "available"
  provider = aws.master

}


resource "aws_subnet" "master_subnet" {
  vpc_id     = aws_vpc.jenkins_master.id
  cidr_block = "10.27.1.0/24"
  tags = {
    Name = "master_subnet"
  }
  provider = aws.master
}



resource "aws_subnet" "slave_subnet" {
  vpc_id     = aws_vpc.jenkins_slave.id
  cidr_block = "10.28.1.0/24"
  tags = {
    Name = "slave_subnet"
  }
  provider = aws.slave
}
