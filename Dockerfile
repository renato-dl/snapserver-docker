FROM alpine:latest

RUN apk update \
&& apk add --no-cache snapcast-server \
&& snapserver -v
EXPOSE 1704 1705
ENTRYPOINT ["snapserver"]
