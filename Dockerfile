FROM telegraf:1.6.4
RUN apt-get update && apt-get install -y python-pip bash && \
    pip install j2cli

COPY /templates/ /templates/
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
