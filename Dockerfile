FROM python:3-alpine
LABEL maintainer "Tatsuya NAKAMURA <nkmrtty.com@gmail.com>"

RUN apk --no-cache add bash bind-tools

RUN pip install --no-cache-dir awscli==1.14.52

COPY ddns53 /usr/local/bin/ddns53

ENTRYPOINT ["/usr/local/bin/ddns53"]
