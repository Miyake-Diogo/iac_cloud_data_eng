# Objetivo

Seguindo as instruções desse repositório você poderá subir um cluster [EMR](https://aws.amazon.com/pt/emr/?whats-new-cards.sort-by=item.additionalFields.postDateTime&whats-new-cards.sort-order=desc) na sua nuvem AWS.  O Amazon EMR é a plataforma de big data em nuvem líder do setor para processar grandes quantidades de dados usando ferramentas de código aberto, como Apache Spark, Apache Hive, Apache HBase, Apache Flink, Apache Hudi e Presto. 

**Vamos usar terraform para seja possível todos subirem a mesma plataforma com a mesma configuração, e depois destruir a infraestrutura.**

## Terraform
O Terraform é uma ferramenta open source para gerenciamento e provisionamento da infraestrutura como código (IaC). Desenvolvida e mantido pela HashiCorp, a ferramenta utiliza uma linguagem simples e declarativa, permitindo desta forma o provisionamento desde uma simples VM até uma infra completa, passando por recursos de rede, segurança, banco de dados, balanceadores de carga e outros.

Nas palavras da própria HashiCorp:

>O Terraform[^1] é usado para criar, gerenciar e atualizar recursos de infraestrutura, como máquinas físicas, VMs, comutadores de rede, contêineres e muito mais. Quase qualquer tipo de infraestrutura pode ser representado como um recurso no Terraform. 

[^1]: Site oficial da ferramenta: https://www.terraform.io. [Aqui](https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started) você poder ver alguns vídeos sobre como começar na AWS com Terraform:

## Pré requisitos
- Ter uma conta na AWS. Se não tiver [crie uma conta](https://docs.aws.amazon.com/pt_br/polly/latest/dg/setting-up.html#setting-up-signup).

- Criar um usuário seu [access key ID e a chave de acesso secreta](https://docs.aws.amazon.com/pt_br/powershell/latest/userguide/pstools-appendix-sign-up.html) com acesso AdministratorAccess. Salve sua chave em lugar seguro.

- Instalar terraform:
    
    ```brew install terraform```
    
    Verificar a instalação:
    
    ```terraform version```
    
    Resultado esperado:
    
    Terraform v0.14.8 (ou versão mais recente)

- Suas credenciais AWS configuradas localmente.

    Com sua conta criada e o CLI instalado, configure o AWS CLI:
    ```aws configure```
    
    Siga os prompts para inserir sua AWS Access Key ID e Secret Access Key, que você encontrará [nesta página](https://console.aws.amazon.com/iam/home?#security_credential).
    
    O processo de configuração cria um arquivo em ```~/.aws/credentials``` no MacOS e Linux ```%UserProfile%\.Aws\credentials``` no Windows, onde suas credenciais são armazenadas.
    
- Crie um par de chaves na AWS EC2 Console e baixe para acesso via ssh ao cluster.
    
    Acesse ao [link](https://console.aws.amazon.com/ec2/home?region=us-east-1#KeyPairs:sort=desc:key-pair-id). Vá em pares de chaves.
    
    ![alt text](resources/criar_par_de_chaves1.png "criando um par de chaves 1")
    
    Criar pares de chaves. Coloque um nome e após isso clique em criar. Automaticamente será realizado o download do par de chaves, guarde em um local seguro.  
    ![alt text](resources/criar_par_de_chaves2.png "criando um par de chaves 2"). Após isso siga as etapas para criação do cluster via terraform.  

## Para subir seu cluster siga os passo a passo nesse [link](Etapas.md)
