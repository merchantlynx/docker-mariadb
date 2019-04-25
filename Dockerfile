FROM mariadb:10.3

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
      curl \
    && curl -L -A "Chrome/71.0.3578.80" http://www.quicklz.com/qpress-11-linux-x64.tar -o /tmp/qpress.tar \
    && tar -C /usr/local/bin -xf /tmp/qpress.tar qpress \
    && chmod +x /usr/local/bin/qpress \
    && rm -rf /tmp/* /var/cache/apk/* /var/lib/apt/lists/*

EXPOSE 3306 4444 4567 4567/udp 4568 8080 8081
