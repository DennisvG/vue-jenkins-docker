FROM nginx
WORKDIR "${WORKSPACE}"
RUN pwd
COPY dist/ /usr/share/nginx/html