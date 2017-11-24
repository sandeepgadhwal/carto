FROM sverhoeven/cartodb

ADD ./config/cartodb.nginx.proxy.conf /etc/nginx/sites-enabled/default
EXPOSE 8080

ENV GDAL_DATA /usr/share/gdal/1.11

ADD ./startup.sh /opt/startup.sh

CMD ["/bin/bash", "/opt/startup.sh"]
