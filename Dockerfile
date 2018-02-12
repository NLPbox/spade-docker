FROM nlpbox/charniak:latest
MAINTAINER Arne Neumann <nlpbox.programming@arne.cl>

RUN apt-get update -y

WORKDIR /opt
RUN git clone https://github.com/arne-cl/spade-parser

WORKDIR /opt/spade-parser

#ENTRYPOINT ["./parse.sh"]  
#CMD ["/opt/bllip-parser/sample-text/sample-data.txt"]
