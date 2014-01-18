FROM octohost/openjdk7

WORKDIR /tmp

RUN apt-get install -y unzip wget && wget -q http://downloads.typesafe.com/play/2.2.1/play-2.2.1.zip && unzip -d /usr/local/ play-2.2.1.zip && ln -s /usr/local/play-2.2.1 /usr/local/play
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV PATH "$PATH:/usr/local/play"