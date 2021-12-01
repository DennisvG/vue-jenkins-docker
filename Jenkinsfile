pipeline {
  agent any
  stages {
    stage('install') {
      steps {
        sh '''echo "Install npm packages"
        npm --version
        npm install'''
      }
    }

    stage('Build for production') {
      steps {
        sh '''echo "Build for production"
npm run build'''
      }
    }

    stage('Create docker image') {
      agent any
      steps {
        app = docker.build("dengruns/vue-welcome-app")
        app.inside {
         sh 'echo $(curl localhost:8080)'
        }
      }
    }

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}