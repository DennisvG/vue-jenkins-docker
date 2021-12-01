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
        echo 'Docker image build'
        sh 'docker build -f Dockerfile --no-cache -t vue-welcome-app .'
      }
    }

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}