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
        sh 'docker build -f Dockerfile -t dengruns/vue-welcome-app:$BUILD_ID .'
      }
    }

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}