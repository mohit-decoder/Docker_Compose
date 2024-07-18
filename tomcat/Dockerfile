FROM ubuntu:20.04

WORKDIR /opt/

RUN  mkdir -p /opt/tomcat

COPY install.sh .

RUN chmod 777 install.sh && sh install.sh

RUN mv apache-tomcat-10.1.26/* /opt/tomcat && mv student.war /opt/tomcat/webapps && mv mysql-connector.jar /opt/tomcat/lib

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


