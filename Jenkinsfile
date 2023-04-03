pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', usernameVariable: 'username', passwordVariable: 'password')]) {
          powershell("""
            cd lbvserver
            terraform init
          """)
        }
      }
    }
    
    stage('Terraform Plan') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', usernameVariable: 'username', passwordVariable: 'password')]) {
          powershell("""
            cd lbvserver
            terraform plan -out=tfplan
          """)
        }
      }
    }
    
    stage('Terraform Apply') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', usernameVariable: 'username', passwordVariable: 'password')]) {
          powershell("""
            cd lbvserver
            terraform apply tfplan
          """)
        }
      }
    }
  }
}
