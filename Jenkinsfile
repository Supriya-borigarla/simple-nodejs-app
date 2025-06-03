pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'supriya2728/supriya-repo'
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm  // Automatically uses the configured repository from Jenkins
            }
        }

        stage('Build Application') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t $nodeapp ."
                }
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh "docker push $nodeapp"
                }
            }
        }
    }
}

