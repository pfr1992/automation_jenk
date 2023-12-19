pipeline {
    agent any

    stages {
        stage ('Inicial') {
            steps {
             echo "Hello Word"
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
