pipeline {
  agent any
  stages {
    stage("build") {
      steps {
        sh ''
        npm install
        npm build
        ''
      }
    }
      stage("deploy") {
      steps {
        sh ''
        docker build -t my-project:v1 .
          docker run -d --name cal1 -p 8080:8080 my-project:v1
        ''
      }
      }
  }
}
