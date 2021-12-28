FROM registry.access.redhat.com/ubi8/nginx-120
# backup
RUN cp -R "${NGINX_CONF_PATH}" /tmp
RUN cp -R "${NGINX_DEFAULT_CONF_PATH}" /tmp
# Add application sources
#ADD $WORKSPACE/nginxconf/mime.types "${NGINX_CONF_PATH}"
#ADD $WORKSPACE/nginxconf/nginx.conf "${NGINX_CONF_PATH}"
#ADD $WORKSPACE/nginxconf/nginx-default-cfg/*.conf "${NGINX_DEFAULT_CONF_PATH}"
#ADD $WORKSPACE/nginx-cfg/*.conf "${NGINX_CONFIGURATION_PATH}"
ADD $WORKSPACE/dist .

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"