pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/rohit-vr/devops_practicals.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('react-frontend:latest', '.')
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    docker.run('react-frontend:latest', '-p 8081:80')
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
