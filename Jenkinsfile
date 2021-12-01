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

    stage('Create docker image') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        sh '''echo "Build application"
npm run build'''
      }
    }

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}