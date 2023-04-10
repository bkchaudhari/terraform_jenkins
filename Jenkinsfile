pipeline {
  agent any
   tools {
        terraform 'Terraform'
    }
  stages {
    stage('Terraform Init') {
      steps {
        withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          powershell("""
          Invoke-Command -ScriptBlock {
            cd lbvserver
            terraform init
          }
          """)
        }
      }
    }
    stage('Terraform Plan') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          powershell("""
           Invoke-Command -ScriptBlock {
             cd lbvserver
              terraform plan --auto-approve
           } 
          """)
        }
      }
    }
	stage('Terraform apply') {
      steps {
         withCredentials([file(credentialsId: 'terrafromcred', variable: 'TF_VAR_Terraform')]) {
          powershell("""
          Invoke-Command -ScriptBlock {
            cd lbvserver
            terraform apply --auto-approve
          }
          """)
        }
      }
    }
  }
}
