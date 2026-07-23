FROM alpine:latest

RUN apk add --no-cache build-base git

RUN git clone https://github.com/rofl0r/microsocks.git /microsocks && \
    cd /microsocks && \
    make && \
    cp microsocks /usr/local/bin/microsocks

EXPOSE 1080

CMD ["microsocks", "-p", "1080"]
