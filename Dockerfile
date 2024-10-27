FROM lsiobase/alpine:3.20

ARG VERSION

EXPOSE 5353

RUN apk --no-cache add nsd=$VERSION
ADD s6-overlay /etc/s6-overlay