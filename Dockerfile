FROM zabbix/zabbix-web-nginx-pgsql:centos-4.2-latest
RUN yum -y install ipa-pgothic-fonts && \
    cd /usr/share/zabbix/assets/fonts && \
    mv DejaVuSans.ttf DejaVuSans.ttf.org && \
    ln -s /usr/share/fonts/ipa-pgothic/ipagp.ttf DejaVuSans.ttf
