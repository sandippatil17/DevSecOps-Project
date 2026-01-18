pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/sandippatil17/DevSecOps-Project.git', branch: 'main'
            }
        }

        stage('Docker image build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Trivy Security Scan') {
            steps {
                sh '''
                trivy fs \
                  --scanners vuln \
                  --severity HIGH,CRITICAL \
                  --exit-code 1 \
                  .
                '''
            }
        }

        stage('Docker container run') {
            steps {
                sh 'docker rm -f myappcontainer || true'
                sh 'docker run -d --name myappcontainer -p 80:80 myapp'
            }
        }
    }
}
