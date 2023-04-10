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
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
         shell ("""
            cd lbvserver1
            terraform init
          """)
        }
      }
    }
    stage('Terraform Plan') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
          shell ("""
            cd lbvserver1
            terraform plan --auto-approve
          """)
        }
      }
    }
	stage('Terraform apply') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
          shell ("""
            cd lbvserver1
            terraform apply --auto-approve
          """)
        }
      }
    }
  }
}
