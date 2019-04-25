FROM node:10.15.3-jessie
MAINTAINER Ivan Froiz <ifrzmgz@gmail.es>

WORKDIR "/home/node"
ADD init.sh /home/node
RUN chmod +x /home/node/init.sh
RUN wget https://dist.ipfs.io/go-ipfs/v0.4.20/go-ipfs_v0.4.20_linux-amd64.tar.gz
RUN tar xvfz go-ipfs_v0.4.20_linux-amd64.tar.gz && cd go-ipfs && ./install.sh
RUN git clone https://github.com/phillmac/orbit-db-api.git && cd orbit-db-api && npm install

RUN rm -Rf /home/node/go-ipfs*
