FROM java:8
MAINTAINER Ryan Cox <ryan.a.cox@gmail.com>

WORKDIR "/"

RUN apt-get update
RUN apt-get install -y git wget
RUN wget https://downloads.typesafe.com/play/2.2.6/play-2.2.6.zip
RUN unzip play-2.2.6.zip
RUN rm play-2.2.6.zip
ENV PATH $PATH:/play-2.2.6

RUN git clone https://github.com/gatling/gatling-computer-database  

WORKDIR "/gatling-computer-database"
RUN play compile
CMD ["./start.sh"]
