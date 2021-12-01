FROM nginx
WORKDIR /var/lib/jenkins/workspace/vue-jenkins-docker_main
RUN pwd
COPY dist/ /usr/share/nginx/html