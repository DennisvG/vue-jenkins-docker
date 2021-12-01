FROM nginx AS build
RUN pwd
RUN ls -l
COPY /build/dist /usr/share/nginx/html