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

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}