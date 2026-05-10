pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/egbedi7/realtime-project-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t realtime-project-demo .'
            }
        }

        stage('Run') {
            steps {
                sh 'docker run -d -p 8888:8888 --name app realtime-project-demo || true'
            }
        }
    }
}
