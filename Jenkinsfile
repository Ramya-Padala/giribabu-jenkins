pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                    npm install
                    npm run build
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    docker build -t my-project:v1 .
                    docker rm -f cal1 || true
                    docker run -d --name cal1 \
                        -p 8080:8080 my-project:v1
                '''
            }
        }

        stage('Test') {
            steps {
                sh 'curl --fail http://127.0.0.1:8080/'
            }
        }
    }
}

