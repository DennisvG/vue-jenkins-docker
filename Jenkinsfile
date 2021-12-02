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
          args "-t dengruns/vue-welcome-app:$BUILD_ID"
        }

      }
      steps {
        sh '''#run detached (-d) and give a specific name, so it can be stopped
        docker run -d --name vue-welcome-app-$BUILD_ID dengruns/vue-welcome-app:$BUILD_ID
        sleep 6'''
        sh '''echo "container logging:"
        docker logs vue-welcome-app-$BUILD_ID'''
        sh '''echo "Stopping and remove docker container"
        docker kill vue-welcome-app-$BUILD_ID
        docker rm vue-welcome-app-$BUILD_ID'''
      }
    }

  }
  tools {
    nodejs 'NodeJS 16.13.0'
  }
}