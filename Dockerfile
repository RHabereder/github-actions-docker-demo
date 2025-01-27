FROM alpine:3.21.2

RUN apk update && \
    apk upgrade && \
    apk add nginx

COPY files/myAwesome.conf /etc/nginx/http.d/default.conf
COPY files/index.html /usr/share/nginx/html/
COPY files/eicar.txt /tmp/eicar.txt

CMD ["nginx", "-g", "daemon off;"]