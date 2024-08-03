FROM silintl/postgresql-backup-restore

RUN apk del postgresql14-client \
    && apk add --no-cache \
      postgresql16-client \
      curl

COPY application/ /data/
WORKDIR /data

CMD ["./entrypoint.sh"]
