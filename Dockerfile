FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh
COPY readme_code.py /readme_code.py

ENTRYPOINT ["sh", "/entrypoint.sh"]