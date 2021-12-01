FROM nginx AS build
RUN pwd
RUN ls -l
COPY build/dist/index.html /usr/share/nginx/html/