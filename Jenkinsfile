pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                echo 'Cloning code from GitHub...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t ci-cd .'
            }
        }

        stage('Run Container') {
            steps {
                echo 'Stopping old container (if exists)...'
                sh 'docker rm -f ci-cd-container || true'

                echo 'Running new container...'
                sh 'docker run -d -p 3001:3000 --name ci-cd-container ci-cd'
            }
        }
    }
}