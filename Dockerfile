FROM alpine:3.7 AS BUILD

RUN apk update
RUN apk add wget unzip
RUN wget http://archive.apache.org/dist/struts/2.5.12/struts-2.5.12-all.zip
RUN unzip -x struts-2.5.12-all.zip


#FROM tomcat:alpine
FROM tomcat@sha256:efda17158a3130d32a26f7a9f6c6dcca60ca250901e4f25c158b311147244fce
COPY --from=BUILD /struts-2.5.12/apps/struts2-rest-showcase.war /usr/local/tomcat/webapps/super-app.war
