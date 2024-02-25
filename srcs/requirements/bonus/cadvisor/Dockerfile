FROM alpine:3.18

RUN apk update && \
	rm -rf /var/cache/apk/*

RUN wget https://github.com/google/cadvisor/releases/download/v0.47.2/cadvisor-v0.47.2-linux-amd64
RUN mv cadvisor-v0.47.2-linux-amd64 cadvisor
RUN chmod +x cadvisor

CMD [ "./cadvisor" ]
