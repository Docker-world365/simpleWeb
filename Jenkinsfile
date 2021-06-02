pipeline {
    agent any
    environment {
    def make = "ls -lrta"
    def platform ="win64"
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
                if(platform.substring(0,3) == "win"){
                    make = "echo done"
                }
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
