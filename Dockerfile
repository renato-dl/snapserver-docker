FROM alpine:latest

RUN apk update \
&& apk add --no-cache snapcast-server \
&& snapserver -v
COPY snapweb.sh /
RUN chmod +x /snapweb.sh && /snapweb.sh && rm /snapweb.sh
EXPOSE 1704 1705
ENTRYPOINT ["snapserver"]
