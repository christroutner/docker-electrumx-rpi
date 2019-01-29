FROM electrumx
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

# Log in as the application user
USER safeuser
# supply password for sudo commands
RUN echo 'abcd8765' | sudo -S pwd
WORKDIR /home/safeuser

RUN sudo apt-get install -y python3-pip
RUN pip3 install git+git://github.com/kyuupichan/electrumx.git



# Used to give Docker something to chew on, so it doesn't exit.
COPY dummyapp.js dummyapp.js
CMD ["node", "dummyapp.js"]
