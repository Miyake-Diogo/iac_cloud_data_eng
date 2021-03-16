# Configurações do EMR
name = "one-piece-spark-app"
region = "us-east-1"
subnet_id = "subnet-06fda208" #"subnet-02b2731c07384f6d2"
vpc_id = "vpc-a28d3cdf" #"vpc-04a7f889ef6d67036"
key_name = "vault"
ingress_cidr_blocks = "0.0.0.0/0" # Não recomendado mas para não ter problemas no teste iremos liberar todas os IPs
release_label = "emr-6.2.0"
applications = ["Hadoop","Hive","Spark","JupyterHub"]

# Configurações dos master nodes
master_instance_type = "m3.xlarge"
master_ebs_size = "50"

# Configuração para os worker nodes
core_instance_type = "m3.xlarge"
core_instance_count = 2
core_ebs_size = "50"
