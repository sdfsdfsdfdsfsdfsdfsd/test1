FROM debian:stable-slim

RUN apt update && \
    apt install -y 3proxy && \
    apt clean

COPY 3proxy.cfg /etc/3proxy.cfg

EXPOSE 1080

CMD ["3proxy", "/etc/3proxy.cfg"]
