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
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Run App (Test)') {
            steps {
                echo 'Running application...'
                sh 'node app.js &'
            }
        }
    }
}