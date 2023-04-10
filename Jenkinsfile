pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Git Checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'lbvserver1']], userRemoteConfigs: [[url: 'https://github.com/bkchaudhari/terraform_jenkins']]])
      }
    }
    stage('Terraform Init') {
      steps {
        withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
         powershell ("""
            cd lbvserver1
            terraform init
          """)
        }
      }
    }
    stage('Terraform Plan') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          powershell ("""
            cd lbvserver1
            terraform plan --auto-approve
          """)
        }
      }
    }
	stage('Terraform apply') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          powershell ("""
            cd lbvserver1
            terraform apply --auto-approve
          """)
        }
      }
    }
  }
}
