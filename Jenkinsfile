

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
        stage('Run Docker container') {
            steps {
                script {
                    docker.image('my-nginx-image').run('-d -p 8087:80')
                }
            }
        }
        // Add additional stages for deployment or testing if needed
    }
}
