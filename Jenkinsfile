pipeline {
  agent any
  environment {
     DOCKERIMAGEURL = "https://hub.docker.com"
     DOCKERCREDENTIALS = "Dockerhub"
  }
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
          additionalBuildArgs "--no-cache"
          registryUrl "${DOCKERIMAGEURL}}"
          registryCredentialsId "${DOCKERCREDENTIALS}"
        }
      }
      steps {
        sh '''echo "Build dockerimage"'''
    }
  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}