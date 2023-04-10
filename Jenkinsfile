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
            cd lbvserver1
            terraform init
          """)
        }
      }
    }
     stage('Terraform Plan') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'password', usernameVariable: 'username')]) {
          powershell("""
            cd lbvserver1
            terraform plan --auto-approve
          """)
        }
      }
    }
  }
}
