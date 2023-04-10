pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
          powershell("""
            cd lbvserver
            terraform init
          """)
        }
    }
    stage('Terraform Plan') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          powershell("""
             cd lbvserver
              terraform plan --auto-approve
          """)
        }
      }
    }
	stage('Terraform apply') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          powershell("""
            cd lbvserver
            terraform apply --auto-approve
          """)
        }
      }
    }
  }
}
