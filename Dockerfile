#Base Image
FROM nginx:1.19-alpine

#Copy index.html to the container
COPY index.html /usr/share/nginx/html


EXPOSE 3001


CMD ["/bin/sh", "-c", "sed -i 's/listen  .*/listen 80;/g' /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
