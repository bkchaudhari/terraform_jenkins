pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'TF_VAR_ns_password', usernameVariable: 'TF_VAR_ns_username')]) {
         powershell("""
            cd lbvserver1
            terraform init
          """)
        }
      }
    }
    stage('Terraform Plan') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'TF_VAR_ns_password', usernameVariable: 'TF_VAR_ns_username')]) {
          powershell("""
            cd lbvserver1
            terraform plan --auto-approve
          """)
        }
      }
    }
	stage('Terraform apply') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'terraform-credentials', passwordVariable: 'TF_VAR_ns_password', usernameVariable: 'TF_VAR_ns_username')]) {
          powershell("""
            cd lbvserver1
            terraform apply --auto-approve
          """)
        }
      }
    }
  }
}
