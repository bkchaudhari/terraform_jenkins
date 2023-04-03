pipeline{
    agent any 
    tools {
    terraform 'Terraform'
    }
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/bkchaudhari/terraform_jenkins']]])
    
    dir('lbvserver') {    
        stages{
            stage('terraform init'){
            steps{
                powershell 'terraform init'
                }
            }   
    }
}
