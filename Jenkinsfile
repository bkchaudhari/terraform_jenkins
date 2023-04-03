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
   }
     stage('Terraform Plan') {
       steps {
          powershell("""
            cd lbvserver
            terraform plan -var-file="../secret.tfvars" --auto-approve
          """)
      }
    }
     stage('Terraform Apply') {
      steps {
          powershell("""
            cd lbvserver
            terraform apply -var-file="../secret.tfvars" --auto-approve
          """)
      }
    }
  }
}
