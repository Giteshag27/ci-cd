pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                echo 'Cloning code from GitHub...'
                checkout scm
            }
        }

        stage('Build') {
            agent {
                docker {
                    image 'node:18'
                }
            }
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Run App (Test)') {
            agent {
                docker {
                    image 'node:18'
                }
            }
            steps {
                echo 'Running application...'
                sh 'node app.js &'
            }
        }
    }
}