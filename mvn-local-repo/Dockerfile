FROM maven:3.6-openjdk-8-slim
RUN mkdir /tmp/lib
COPY installJarsLocally.sh /tmp
# Add COPY command here to copy all jars needed to the image; specify the /tmp folder if you want to use the below script unchanged; see example below
# COPY my-helper-1.0.0.jar /tmp/lib
RUN /tmp/installJarsLocally.sh 
