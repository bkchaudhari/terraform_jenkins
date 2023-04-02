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
                    workingDirectory: 'master/lbvserver',
                )
            }
        }

        stage('Plan') {
            steps {
                terraformPlan(
                    workingDirectory: 'master/lbvserver',
                )
            }
        }

        stage('Apply') {
            steps {
                terraformApply(
                    workingDirectory: './terraform',
                    commandOptions: '-auto-approve'
                )
            }
        }
    }
}
