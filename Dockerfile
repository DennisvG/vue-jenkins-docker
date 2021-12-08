FROM nginx:stable-alpine
COPY $WORKSPACE/dist /usr/share/nginx/html