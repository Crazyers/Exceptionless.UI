FROM nginx:1.13.9-alpine
LABEL Author="Exceptionless"
COPY bootstrap /usr/local/bin/bootstrap
COPY nginx-site.conf /etc/nginx/conf.d/default.conf
COPY /src/dist /app

RUN chmod +x /usr/local/bin/bootstrap \
  && echo "daemon off;" >> /etc/nginx/nginx.conf

ENTRYPOINT ["bootstrap"]