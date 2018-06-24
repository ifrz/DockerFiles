Template for generic juniper VPNs with openconnect. The container must be privileged. This specific version of openconnect allow skip the certificate 

After build the image, there is an example of how to launch an specific vpn 

docker run -v $HOME/docker:/mnt --net=macvlan0 --ip=X.X.X.X -it --cap-add=NET_ADMIN -e PASSWORD=mypassw -e USER=myuser -e URL=urllogin/welcome.cgi --device /dev/net/tun --privileged --name myvpn vpn_juniper:latest
