pipeline {
  agent any
  stages {
    stage('install') {
      wrap([$class: 'NodeJSBuildWrapper', nodeJSInstallationName: 'NodeJS 16.13.0' ]) {
          sh 'npm --version'
        }
      steps {
        sh '''echo "Install npm packages"
npm install'''
      }
    }

  }
}