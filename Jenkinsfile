pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }
    stages {
        stage('Git checkout') {
           steps{
                git 'https://github.com/bkchaudhari/terraform_jenkins'
            }
        }
        stage('terraform Init') {
            steps{
                powershell 'terraform init'
            }
        }
        stage('terraform apply') {
            steps{
                powershell 'terraform apply --auto-approve'
            }
        }
    } 
}
