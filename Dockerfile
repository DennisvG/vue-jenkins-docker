FROM nginx
RUN pwd
RUN ls -l
COPY dist /usr/share/nginx/html