FROM electrumx
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

# Log in as the application user
USER safeuser
# supply password for sudo commands
RUN echo 'abcd8765' | sudo -S pwd
WORKDIR /home/safeuser

RUN sudo python3 setup.py -y install

RUN git clone https://github.com/kyuupichan/electrumx.git
WORKDIR /home/safeuser/electrumx
RUN sudo mkdir /srv/db

# These env vars should be set at run time.
ENV COIN=BitcoinCashABC
ENV DB_DIRECTORY=/srv/db
ENV TCP_PORT=50001
ENV DONATION_ADDRESS=none
ENV HOST="0.0.0.0"

EXPOSE 50001

# Used to give Docker something to chew on, so it doesn't exit.
COPY dummyapp.js dummyapp.js
CMD ["node", "dummyapp.js"]
