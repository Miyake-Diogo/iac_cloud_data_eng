# Configurações do EMR
name      = "lunch-learn-spark-cluster"
region    = "us-west-2"
subnet_id = "subnet-ed289f95" 
vpc_id    = "vpc-3f6d4847"

ingress_cidr_blocks = "0.0.0.0/0"
release_label       = "emr-6.2.0"
applications        = ["Hadoop", "Hive", "Spark", "JupyterHub"]

# Configurações dos master nodes
master_instance_type = "m5.xlarge"
master_ebs_size      = "50"

# Configuração para os worker nodes
core_instance_type  = "m5.xlarge"
core_instance_count = 2
core_ebs_size       = "50"
