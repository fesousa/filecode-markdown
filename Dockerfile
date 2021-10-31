FROM ubuntu:latest

RUN apt update
RUN apt install -y git

COPY entrypoint.sh /entrypoint.sh
COPY readme_code.py /readme_code.py

ENTRYPOINT ["sh", "/entrypoint.sh"]