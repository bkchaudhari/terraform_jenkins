pipeline{
    agent any 
    tools {
    terraform 'Terraform'
    }
    stages{
        stage('Git checkout'){
            steps{
                git 'https://github.com/bkchaudhari/terraform_jenkins'
            }
        }
        stage('terraform init'){
            steps{
                powershell 'terraform int'
            }
        }
    }
}
