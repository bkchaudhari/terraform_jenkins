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
                    workingDirectory: '.terraform/lbvserver',
                )
            }
        }

        stage('Plan') {
            steps {
                terraformPlan(
                    workingDirectory: '.terraform/lbvserver',
                )
            }
        }

        stage('Apply') {
            steps {
                terraformApply(
                    workingDirectory: '.terraform/lbvserver',
                    commandOptions: '-auto-approve'
                )
            }
        }
    }
}
