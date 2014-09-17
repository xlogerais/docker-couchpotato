#
#
#
FROM python:2

MAINTAINER Xavier Logerais <xavier@logerais.com>

# Create a dedicated user
RUN useradd -m couchpotato

# Download latest version
USER couchpotato
WORKDIR /home/couchpotato
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git ./app

# Create a volume for movies
USER couchpotato
WORKDIR /home/couchpotato
RUN mkdir movies

# Expose the couchpotato home
VOLUME /home/couchpotato

# Expose the listening port
EXPOSE 5050

USER couchpotato
WORKDIR /home/couchpotato
CMD [ "python", "app/CouchPotato.py" ]
