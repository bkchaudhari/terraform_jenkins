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
                 withCredentials([usernamePassword(credentialsId: 'terraform-credentials', usernameVariable: 'username', passwordVariable: 'password')]) {
                    powershell "terraform plan -backend-config='token=${username}' -backend-config='secret=${password}'"
                 
                 }
            }
        }
    } 
}
}   
