FROM ubuntu:14.04

#Update the image
RUN apt-get update && apt-get install -y git curl

#Download and install chef-solo
RUN curl -L https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.5-1_amd64.deb -o chef.deb
RUN dpkg -i chef.deb && rm chef.deb

#Create path to store all source
RUN mkdir /opt/rushiReady

#Download  all the source code from project
RUN git clone https://github.com/alanwds/roshiReady.git /opt/rushiReady 

#Run chef-client with the attributes json file with all the setup
RUN chef-solo -c /opt/rushiReady/chef/config.rb -j /opt/rushiReady/chef/attributes.json 

#Sleep infinity for debug (remove after everything works)
RUN sleep infinity
