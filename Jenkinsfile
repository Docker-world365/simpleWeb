pipeline {
    agent any
    environment {
    def make = "ls -lrta"
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building image from Dockerfile'
                sh 'docker build -t imvipul26/simple-node .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'docker run -d imvipul26/simple-node'
                sh """
                    ${make}
                """
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
