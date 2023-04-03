pipeline{
    agent any 
    tools {
    terraform 'Terraform'
    }
    dir('lbvserver') {    
        stages{
            stage('terraform init'){
                steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/bkchaudhari/terraform_jenkins']]])
                }
            }   
            stage('terraform init'){
                steps{
                powershell 'terraform init'
                }
            }   
        }
    }
}
