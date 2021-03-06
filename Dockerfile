FROM    centos:centos7

# Enable EPEL for Node.js
RUN yum install -y epel-release

# Install Node.js and npm
RUN yum install -y npm

# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE 8079
CMD ["node","src/index.js"]
