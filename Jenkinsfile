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
                    workingDirectory: './main/lbvserver/',
                )
            }
        }

        stage('Plan') {
            steps {
                terraformPlan(
                    workingDirectory: './main/lbvserver/',
                )
            }
        }

        stage('Apply') {
            steps {
                terraformApply(
                    workingDirectory: './main/lbvserver/',
                    commandOptions: '-auto-approve'
                )
            }
        }
    }
}
