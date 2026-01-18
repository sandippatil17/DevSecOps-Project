pipeline {
    agent any

    stages {
        stage('GitHub config') {
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
    }
}
