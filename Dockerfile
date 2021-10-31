FROM ubuntu:latest

RUN apt update
RUN apt install git

COPY entrypoint.sh /entrypoint.sh
COPY readme_code.py /readme_code.py

ENTRYPOINT ["sh", "/entrypoint.sh"]