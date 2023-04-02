pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Init') {
            steps {
                terraformInit(
                    workingDirectory: './terraform_jenkins/lbvserver/',
                )
            }
        }

        stage('Plan') {
            steps {
                terraformPlan(
                    workingDirectory: './terraform_jenkins/lbvserver/',
                )
            }
        }

        stage('Apply') {
            steps {
                terraformApply(
                    workingDirectory: './terraform_jenkins/lbvserver/',
                    commandOptions: '-auto-approve'
                )
            }
        }
    }
}
