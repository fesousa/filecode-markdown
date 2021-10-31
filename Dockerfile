FROM ubuntu:latest

RUN apk update
RUN apk --no-cache add curl
RUN apk add jq

COPY entrypoint.sh /entrypoint.sh
COPY readme_code.py /readme_code.py

ENTRYPOINT ["sh", "/entrypoint.sh"]