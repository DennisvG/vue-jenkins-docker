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
        dockerfile {
          filename 'Dockerfile'
          additionalBuildArgs  '$WORKSPACE --tag rppp:$BRANCH_NAME --no-cache'
        }

      }
      steps {
        echo 'Docker image build'
      }
    }

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}