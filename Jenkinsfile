pipeline {
  agent any
  environment {
    imageRegisterUrl = ''
    imageRegisterCredentials = 'Dockerhub'
    imageName = 'dengruns/vue-jenkins-docker'
    dockerImage=''
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
      steps {
        sh '''echo "Build dockerimage"'''
        script {
          dockerImage = docker.build imageName + ":$BUILD_ID"
        }
      }
    }
  }
  stage('Push docker image') {
      steps {
        sh '''echo \'Push image to docker\' '''
        script {
          docker.withRegistry('', imageRegisterCredentials ) {
            dockerImage.push()
            dockerImage.push('latest')
          }
        }
      }
  }


  tools {
    nodejs 'NodeJS 16.13.0'
  }
}