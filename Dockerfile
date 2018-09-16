FROM bdobyns/centos4.6_i386

RUN yum install wget

RUN cd /tmp/ && wget http://download.altera.com/akdlm/software/acds/9.1sp2/350/download/91sp2_quartus_free_linux.tar
RUN cd /tmp/ && tar -xf /tmp/91sp2_quartus_free_linux.tar

RUN yum install csh

RUN csh /tmp/quartus_free/install --auto /opt/quartus/; exit 0

RUN rm -rf /tmp/quartus_free/

COPY master.zip /tmp/master.zip
RUN cd /tmp/ && \
    unzip master.zip -d ~/.fonts
RUN fc-cache -f -v

CMD ["/opt/quartus/quartus/bin/quartus"]