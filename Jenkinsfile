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

        stage('Docker container run') {
            steps {
                sh 'docker rm -f myappcontainer || true'
                sh 'docker run -d --name myappcontainer -p 80:80 myapp'
            }
        }
        stage('Trivy Scan') {
            steps {
                sh 'trivy fs --scanners vuln .'
            }
        }

        stage('Deploy using Ansible') {
            steps {
                sh 'ansible-playbook -i hosts nginx.yml'
            }
        }
    }
}
