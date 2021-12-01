pipeline {
  agent any
  tools {nodejs "NodeJS 16.13.0"}
  stages {
    stage('install') {
      steps {
        sh '''echo "Install npm packages"
        npm --version
        npm install'''
      }
    }

  }
}