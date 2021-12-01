pipeline {
  agent any
  stages {
    stage('install') {
      agent {
        node {
          label 'NodeJS 16.13.0'
        }

      }
      steps {
        sh '''echo "Install npm packages"
npm install'''
      }
    }

  }
}