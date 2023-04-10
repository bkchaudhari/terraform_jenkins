pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
        withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          command = "powershell -ExecutionPolicy Bypass("""
            cd lbvserver1
            terraform init
          """)
        }
      }
    }
    stage('Terraform Plan') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          command = "powershell -ExecutionPolicy Bypass("""
            cd lbvserver1
            terraform plan --auto-approve
          """)
        }
      }
    }
	stage('Terraform apply') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          command = "powershell -ExecutionPolicy Bypass("""
            cd lbvserver1
            terraform apply --auto-approve
          """)
        }
      }
    }
  }
}
