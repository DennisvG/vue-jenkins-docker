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
      agent {
        docker {
          image 'dengruns/vue-jenkins-docker:$BUILD_ID'
        }

      }
      steps {
        sh '#docker build -f Dockerfile --no-cache -t dengruns/vue-welcome-app .'
      }
    }

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}