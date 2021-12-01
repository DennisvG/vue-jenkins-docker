FROM nginx AS build
RUN pwd
RUN ls -l
COPY /buid/dist /usr/share/nginx/html