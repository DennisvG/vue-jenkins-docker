FROM nginx AS build
RUN pwd
RUN ls -l
COPY dist/index.html /usr/share/nginx/html/