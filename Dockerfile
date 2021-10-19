FROM ubuntu 

# Environtment Variables
ENV TOOLS="/opt"
ENV GO111MODULE=on
ENV GOROOT=/usr/local/go
ENV GOPATH=/go
ENV PATH=${GOPATH}/bin:${GOROOT}/bin:${PATH}
ENV WORDLISTS="/usr/wordlists"

# Create dirs
RUN mkdir $WORDLISTS
RUN mkdir ~/.gf

# Install the Basics
RUN apt-get update \ 
	&& apt-get install -y \
	curl \
	# default-jdk \
	findutils \
	git \
	jq \
	python3 \
	python3-pip \
	ruby-dev \
	vim \
	wget 

# Install Tools
RUN apt-get update \
	&& apt-get install -y \
	nmap

# Install go
RUN wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz && \
	tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz && \
	rm -rf go1.15.6.linux-amd64.tar.gz

# TOOLS

# altdns
#RUN pip3 install py-altdns

# amass
RUN go get -v github.com/OWASP/Amass/v3/...

# dirsearch
RUN git clone https://github.com/maurosoria/dirsearch.git $TOOLS/dirsearch && \
	cd $TOOLS/dirsearch && \
	pip3 install -r requirements.txt

# dnsvalidator
#RUN git clone https://github.com/vortexau/dnsvalidator.git $TOOLS/dnsvalidator && \
#	cd $TOOLS/dnsvalidator && \
#	python3 setup.py install

# ffuf
RUN go get -u github.com/ffuf/ffuf

# gf
RUN go get -u github.com/tomnomnom/gf && \
	#cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf && \
	git clone https://github.com/1ndianl33t/Gf-Patterns && \
	mv /Gf-Patterns/*.json ~/.gf && \
	git clone https://github.com/dwisiswant0/gf-secrets
	#cd gf-secrets/ && \
	#cp -a ~/.gf/ 
	
# gau
RUN wget https://github.com/lc/gau/releases/download/v1.1.0/gau_1.1.0_linux_amd64.tar.gz && \
	tar xvf gau_1.1.0_linux_amd64.tar.gz && \
	rm -rf tar xvf gau_1.1.0_linux_amd64.tar.gz && \
	mv gau /usr/bin/gau

# httpx
RUN go get -v github.com/projectdiscovery/httpx/cmd/httpx

# IIS short name scanner
RUN git clone https://github.com/irsdl/IIS-ShortName-Scanner.git $TOOLS/IIS-ShortName-Scanner

# kiterunner
RUN wget https://github.com/assetnote/kiterunner/releases/download/v1.0.1/kiterunner_1.0.1_linux_amd64.tar.gz &&\
	tar xvf kiterunner_1.0.1_linux_amd64.tar.gz && \
	rm -rf tar xvf kiterunner_1.0.1_linux_amd64.tar.gz && \
	mv kr /usr/bin/kr

# linkfinder
RUN git clone https://github.com/GerbenJavado/LinkFinder.git $TOOLS/linkfinder && \
	cd $TOOLS/linkfinder && \
	python3 setup.py install && \
	pip3 install -r requirements.txt
	
# massdns
RUN git clone https://github.com/blechschmidt/massdns $TOOLS/massdns && \
	cd $TOOLS/massdns && \
	make

# meg
#RUN wget https://github.com/tomnomnom/meg/releases/download/v0.2.4/meg-linux-amd64-0.2.4.tgz && \
#	tar xvf meg-linux-amd64-0.2.4.tgz && \
#	rm -rf tar xvf meg-linux-amd64-0.2.4.tgz && \
#	mv meg /usr/bin/meg

# secretfinder
RUN git clone https://github.com/m4ll0k/SecretFinder.git $TOOLS/secretfinder && \
	cd $TOOLS/secretfinder && \
	pip3 install -r requirements.txt

# Wordlists
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-large-directories-lowercase.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-medium-directories-lowercase.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-small-directories-lowercase.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-large-files-lowercase.txt 
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-large-words-lowercase.txt

# Config
RUN wget -O ~/.vimrc https://raw.githubusercontent.com/D1al-T0ne/The-Switchboard/master/dot%20files/.vimrc
