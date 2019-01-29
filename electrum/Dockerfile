#IMAGE BUILD COMMANDS
FROM python-base
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

# Log in as the application user
USER safeuser
# supply password for sudo commands
RUN echo 'abcd8765' | sudo -S pwd
WORKDIR /home/safeuser

# Used to give Docker something to chew on, so it doesn't exit.
COPY dummyapp.js dummyapp.js
CMD ["node", "dummyapp.js"]
