#IMAGE BUILD COMMANDS
FROM ubuntu-base
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

WORKDIR /home/safeuser

# Install the latest levelDB.
# https://tangerina.jp/blog/leveldb-1.20-build/
RUN wget https://github.com/google/leveldb/archive/v1.20.tar.gz
RUN tar -xvf v1.20.tar.gz
WORKDIR /home/safeuser/leveldb-1.20
RUN make
RUN sudo cp -r include/leveldb /usr/local/include/
RUN sudo install -o root -m 644 -p out-shared/libleveldb.so.1.20 /usr/local/lib/
RUN sudo cp -d out-shared/libleveldb.so out-shared/libleveldb.so.1 /usr/local/lib/
RUN sudo install -o root -m 644 -p out-static/lib* /usr/local/lib/
WORKDIR /home/safeuser

# Install Python 3.7
RUN sudo apt-get install -y build-essential libncurses5-dev libncursesw5-dev \
libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev \
libexpat1-dev zlib1g-dev liblzma-dev libffi-dev
#tk-dev
RUN wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
RUN tar -xvf Python-3.7.2.tar.xz
WORKDIR /home/safeuser/Python-3.7.2
RUN ./configure
RUN make
RUN sudo make altinstall

# Log in as the application user
USER safeuser
# supply password for sudo commands
RUN echo 'abcd8765' | sudo -S pwd
WORKDIR /home/safeuser

# Used to give Docker something to chew on, so it doesn't exit.
COPY dummyapp.js dummyapp.js
CMD ["node", "dummyapp.js"]
