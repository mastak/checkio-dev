FROM mastak/checkio-dev-base
MAINTAINER Igor Lubimov <igor@checkio.org>


RUN mkdir /opt/db && chown -R postgres /opt/db
COPY db.sql /opt/db/db.sql

USER postgres
RUN /etc/init.d/postgresql start && psql checkio < /opt/db/db.sql

USER root

RUN rm -rf /opt/db/*
# RUN rm -rf /etc/nginx/conf.d/*


COPY default.conf /etc/nginx/conf.d/default.conf

COPY init.sh /opt/init.sh
COPY init-fast.sh /opt/init-fast.sh
RUN chmod 755 /opt/init.sh
RUN chmod 755 /opt/init-fast.sh

EXPOSE 80

CMD ["/bin/bash", "/opt/init.sh"]
