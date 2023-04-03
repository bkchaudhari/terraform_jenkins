pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
          powershell("""
            cd lbvserver
            terraform init
          """)
        }
      }
    }
    stage('Terraform Apply') {
      steps {
          powershell("""
            cd lbvserver
            terraform apply -var-file="../secret.tfvars" -auto-approve
          """)
      }
    }
  }
}
