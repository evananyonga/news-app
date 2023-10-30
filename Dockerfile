FROM python:3.12.0-bookworm

WORKDIR var/www/mockingapp/

COPY requirements.txt requirements.txt

ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

RUN pip install --no-cache-dir -r requirements.txt

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

COPY . ./

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh", "--", "./docker-entrypoint.sh"]
