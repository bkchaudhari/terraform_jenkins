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
}
