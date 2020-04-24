FROM python:2.7-alpine

LABEL maintainer="duck. <me@duck.me.uk>"

RUN apk --no-cache add --update mercurial git

RUN hg clone http://hg.openttdcoop.org/ottdstats /app \
    && pip install --no-cache requests \
    && pip install --no-cache mysql-connector \
    && pip install --no-cache git+https://github.com/ropenttd/libottdadmin2.git#egg=libottdadmin2 \
    && apk del mercurial git

WORKDIR /app

ENTRYPOINT ["python", "/app/server.py"]
