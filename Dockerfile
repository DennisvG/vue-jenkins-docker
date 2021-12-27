FROM registry.access.redhat.com/ubi8/nginx-120
COPY $WORKSPACE/dist /usr/share/nginx/html