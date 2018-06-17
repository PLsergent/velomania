FROM tomcat:9

ADD web/WEB-INF/web.xml /usr/local/tomcat/conf/ 
ADD yourwarfile.war /usr/local/tomcat/webapps/  
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
