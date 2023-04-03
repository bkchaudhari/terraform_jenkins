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
                dir("lbvserver") {
                    powershell 'terraform init'
                }
            }
        }
        stage('terraform plan') {
            steps{
                 dir("lbvserver") {
                 withCredentials([string(credentialsId: '', variable: 'terraform-credentials')]){
                    powershell "terraform plan'
                 }
                }
            }
        } 
    }
}   
