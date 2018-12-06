FROM alpine:3.6
MAINTAINER BSCC APPDEV <appdev@bluesprucecapital.com>

RUN mkdir -p /usr/content/portal
RUN mkdir -p /usr/app

COPY deploy-content /usr/app
RUN chmod +x /usr/app/deploy-content

COPY build /usr/content/portal

WORKDIR /usr/app


CMD ["./deploy-content"]
