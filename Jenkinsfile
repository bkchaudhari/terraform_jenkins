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
                    withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
                        powershell 'terraform plan ${terraform-credentials}'
                    }
                 }
             }
         }
    }
}
