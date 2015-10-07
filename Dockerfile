FROM perl:latest
MAINTAINER Natalia Strelkova flore@ya.ru

RUN curl -L http://cpanmin.us | perl - Dancer2
RUN cpanm Starman
RUN no_cache=2015-09-01 git clone https://github.com/skalolazka/dancer-playground.git

EXPOSE 5000

WORKDIR dancer-playground/Flore-DancerPlayground/
CMD starman --port 5000 bin/app.psgi
