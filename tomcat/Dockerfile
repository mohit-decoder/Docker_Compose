FROM ubuntu:20.04

WORKDIR /opt/

RUN  mkdir -p /opt/tomcat

COPY install.sh .

RUN chmod 777 install.sh && sh install.sh

RUN mv apache-tomcat-10.1.26/* /opt/tomcat && mv student.war /opt/tomcat/webapps && mv mysql-connector.jar /opt/tomcat/lib

ARG CONTEXT_LINE_NUMBER=21

RUN echo "CONTEXT_LINE_NUMBER: ${CONTEXT_LINE_NUMBER}"

COPY ./data.txt /opt/tomcat/

RUN sed -i "${CONTEXT_LINE_NUMBER}r /opt/tomcat/data.txt" /opt/tomcat/conf/context.xml

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


