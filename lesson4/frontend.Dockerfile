FROM httpd

RUN apt-get upgrade && apt-get update && apt-get install -y curl