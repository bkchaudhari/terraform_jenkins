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
                 withCredentials([usernamePassword(credentialsId: 'terraform-credentials', usernameVariable: 'TF_API_TOKEN', passwordVariable: 'TF_API_SECRET')]) {
                    powershell "terraform init -backend-config='token=${TF_API_TOKEN}' -backend-config='secret=${TF_API_SECRET}'"
                 
                 }
            }
        }
    } 
}
