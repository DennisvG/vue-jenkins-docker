pipeline {
  agent any
  stages {
    stage('install') {
      steps {
        wrap([$class: 'NodeJSBuildWrapper', nodeJSInstallationName: 'NodeJS 16.13.0' ]) {
          sh 'npm --version'
        }
        sh '''echo "Install npm packages"
npm install'''
      }
    }

  }
}