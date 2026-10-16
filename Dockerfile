FROM httpd:2.4-alpine
COPY apache/voltario.conf /usr/local/apache2/conf/extra/voltario.conf
RUN printf '\nInclude conf/extra/voltario.conf\n' >> /usr/local/apache2/conf/httpd.conf
COPY dist/voltario/ /usr/local/apache2/htdocs/voltario/
