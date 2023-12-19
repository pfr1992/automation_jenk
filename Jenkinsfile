pipeline {
    agent any

    stages {
        stage ('Inicial') {
            steps {
                script {
                    dockerapp = docker.build("fabricioveronez/web-live-app:${env.BUILD_ID}", "-f ./src/Dockerfile ./src")
                }
            }
        }
        stage ('Get Source') {
            steps {
                   git url: 'https://github.com/pfr1992/automation_jenk', branch: 'main'
                }
            }
        }

        stage ('Execute Script') {
            steps {
                script{
                    python3 app.py
                }
            }
        }
        }
