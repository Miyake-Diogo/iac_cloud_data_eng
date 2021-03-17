# Configurações do EMR
name      = "SEU CLUSTER"
region    = "SUA REGION"
subnet_id = "SUA SUBNET ID" 
vpc_id    = "Sua VPC ID"
key_name  = "Coloque o nome da chave"
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
