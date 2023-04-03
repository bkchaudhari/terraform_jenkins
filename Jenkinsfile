pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
          pwsh("""
            cd lbvserver
            terraform init
          """)
        }
      }
    }
    stage('Terraform Plan') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
          powershell("""
            cd lbvserver
            terraform plan
          """)
        }
      }
    }
    
    stage('Terraform Apply') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
          powershell("""
            cd lbvserver
            terraform apply -auto-approve
          """)
        }
      }
    }
  }
}
