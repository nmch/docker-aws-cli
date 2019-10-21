FROM docker:latest

RUN apk add --no-cache curl jq python3 yarn \
 && apk add --no-cache --virtual build-deps build-base gcc python3-dev \
 && pip3 install --upgrade pip awscli aws-sam-cli \
 && apk del build-deps python3-dev
