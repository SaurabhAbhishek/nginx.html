pipeline {
    agent any
    
    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/SaurabhAbhishek/nginx.html.git'
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    docker.build('nginx-image:latest', '-f Dockerfile1 .')
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.image('nginx-image:latest').withRun('-p 8087:80 -d')
                }
            }
        }
    }
}
