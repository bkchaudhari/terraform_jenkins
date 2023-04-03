pipeline{
    agent any 
    tools {
    terraform 'Terraform'
    }
    stages{
        
        stage('Git checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: '/lbvserver']], userRemoteConfigs: [[url: 'https://github.com/bkchaudhari/terraform_jenkins']]])
            }
        }
        stage('build') {
            steps {
                powershell 'cd lbvserver'
            }
        }
        stage('terraform init'){
            steps{
                powershell 'terraform init'
            }
        }
    }
}
