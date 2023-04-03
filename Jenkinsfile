checkout([$class: 'GitSCM', 
          branches: [[name: 'main']], 
          userRemoteConfigs: [[url: 'https://github.com/bkchaudhari/terraform_jenkins']]])
dir('lbvserver') {
    // Commands to execute in the subdirectory go here
    withTerraform(credentialsId: 'terraform-credentials', version: '1.0.0', terraformInstallation: 'terraform-1.0.0')
    {
    terraforminit()
    }
    {
    terraformplan()
    }
    {
    terraformapply()
    }

}
