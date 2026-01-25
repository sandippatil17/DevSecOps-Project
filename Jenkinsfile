pipeline {
    agent any
    environment {
        LANG = 'C.UTF-8'
        LC_ALL = 'C.UTF-8'
    }
    stages {
        stage('GitHub config') {
            steps {
                git url:'https://github.com/sandippatil17/DevSecOps-Project.git', branch:'main'
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
        stage('Trivy Security Scan') {
            steps {
            sh '''
            trivy image myapp
            trivy fs --scanners vuln .
            trivy fs --scanners secret .
            trivy config .
            '''
            }
        }


        stage('Deploy using Ansible') {
            steps {
                sh 'ansible-playbook -i hosts nginx.yml'
            }
        }
    }
}
