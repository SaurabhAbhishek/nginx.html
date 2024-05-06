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
                    docker.build('my-nginx-image', '.')
                }
            }
        }
        // Add additional stages for deployment or testing if needed
    }
}

