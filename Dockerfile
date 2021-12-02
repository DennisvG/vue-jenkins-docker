FROM nginx AS build-production
COPY dist /usr/share/nginx/html