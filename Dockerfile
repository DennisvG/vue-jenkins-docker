FROM nginx
RUN pwd
COPY dist/ /usr/share/nginx/html