FROM alpine:3.18

RUN apk update && \
	apk add nginx git --no-cache && \
	rm -rf /var/cache/apk/*

RUN rm /etc/nginx/http.d/default.conf
COPY ./conf/static.conf /etc/nginx/http.d/static.conf

WORKDIR /var/www
RUN rm -fr ./*
RUN git clone https://github.com/R4yL-dev/inception-static.git
RUN rm -fr inception-static/.git
RUN cp -fr inception-static/* ./
RUN rm -fr inception-static

EXPOSE 4242

CMD ["nginx", "-g", "daemon off;"]
