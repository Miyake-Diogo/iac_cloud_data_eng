output "emr_master_security_group" {
  value = aws_security_group.emr_master.id
}

output "emr_worker_security_group" {
  value = aws_security_group.emr_worker.id
}
/*
output "emr_master_aws_vpc" {
  value = aws_vpc.emr_master.id
}

output "emr_worker_aws_vpc" {
  value = aws_vpc.emr_worker.id
}

output "emr_aws_master_default_subnet" {
  value = aws_default_subnet.emr_worker.id
}

output "emr_aws_worker_default_subnet" {
  value = aws_default_subnet.emr_worker.id
}*/