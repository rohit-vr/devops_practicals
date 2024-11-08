pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/your-username/your-repo.git', branch: 'main'
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
                    docker.run('react-frontend:latest', '-p 80:80')
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
