FROM nginx
WORKDIR /var/lib/jenkins/workspace/vue-jenkins-docker_main
RUN pwd
RUN ls -l
COPY dist/ /usr/share/nginx/html