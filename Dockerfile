FROM alpine:latest

RUN apk add --no-cache microsocks

EXPOSE 1080

CMD ["microsocks", "-p", "1080"]
