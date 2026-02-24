pipeline {
    agent any
    environment {
        LANG = 'C.UTF-8'
        LC_ALL = 'C.UTF-8'
        SNYK_TOKEN = credentials('snyk-token')
    }
    stages {
        stage('GitHub config') {
            steps {
                git url:'https://github.com/sandippatil17/DevSecOps-Project.git', branch:'main'
            }
        }

        stage('Snyk Code Scan') {
            steps {
                script {
                    echo "--- Step 1: Scanning Application Code ---"
                    sh "snyk auth ${SNYK_TOKEN}"
                    sh 'snyk test --severity-threshold=high || true'
                }
            }
        }

        stage('Docker Image Build') {
            steps {
                echo "Building Docker Image..."
                sh 'docker build -t myapp:latest .'
            }
        }

        stage('Trivy Security Scan') {
            steps {
                script {
                    echo "--- Phase 1: Filesystem Scan ---"
                    sh 'export TMPDIR=$WORKSPACE && trivy fs --severity CRITICAL --exit-code 1 .'
                    
                    echo "--- Phase 2: Image Scan ---"
                    sh 'export TMPDIR=$WORKSPACE && trivy image --severity CRITICAL --no-progress --vuln-type os --exit-code 1 myapp:latest'
                }
            }
        }

        stage('Deploy Static Web-Page') {
            steps {
                echo "Deploying Container to Port 80..."
                sh 'docker rm -f myappcontainer || true'
                sh 'docker run -d --name myappcontainer -p 80:80 myapp:latest'
            }
        }

        stage('Ansible Deploy Apache') {
            steps {
                echo "Configuring Apache on Port 8081..."
                ansiblePlaybook(
                    playbook: 'apache.yml',
                    inventory: 'inventory.ini',
                    credentialsId: 'node-ssh-key',
                    installation: 'Ansible',
                    colorized: true
                )
            }
        }
    }
}
