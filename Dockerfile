FROM sverhoeven/cartodb

EXPOSE 8080

ENV GDAL_DATA /usr/share/gdal/1.11

ADD ./startup.sh /opt/startup.sh

CMD ["/bin/bash", "/opt/startup.sh"]
