FROM electrumx
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

# Log in as the application user
USER safeuser
# supply password for sudo commands
RUN echo 'abcd8765' | sudo -S pwd
WORKDIR /home/safeuser

RUN sudo apt-get install python3-pip
ARG ELECTRUMX_VERSION=f7371e7a71c90017d4dd60be6272dc868bcbf672
RUN pip3 install git+git://github.com/kyuupichan/electrumx.git@${ELECTRUMX_VERSION}



# Used to give Docker something to chew on, so it doesn't exit.
COPY dummyapp.js dummyapp.js
CMD ["node", "dummyapp.js"]
