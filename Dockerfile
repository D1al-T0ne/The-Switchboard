FROM ubuntu 

# Environtment Variables
ENV GO111MODULE=on
ENV GOROOT=/usr/local/go
ENV GOPATH=/go
ENV PATH=${GOPATH}/bin:${GOROOT}/bin:${PATH}
ENV DOTFILES="/dotfiles"
ENV TOOLS="/opt"
ENV WORDLISTS="/usr/wordlists"

ENV DEBIAN_FRONTEND=noninteractive

# Create dirs
RUN mkdir $DOTFILES
RUN mkdir $WORDLISTS
RUN mkdir ~/.gf

# Install the Basics
RUN apt-get update \ 
	&& apt-get install -y \
	curl \
	default-jdk \
	dnsutils \
	findutils \
	git \
	jq \
	nmap \
	npm \
	python3 \
	python3-pip \
	ruby-dev \
	sqlmap \
	vim \
	vim-gtk3 \
	wget 

# Install go
RUN wget https://golang.org/dl/go1.17.5.linux-amd64.tar.gz && \
	tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz && \
	rm -rf go1.17.5.linux-amd64.tar.gz

# TOOLS
# arjun
RUN pip3 install arjun

# amass
RUN go get -v github.com/OWASP/Amass/v3/...

# dirsearch
RUN git clone https://github.com/maurosoria/dirsearch.git $TOOLS/dirsearch && \
	cd $TOOLS/dirsearch && \
	pip3 install -r requirements.txt

# eyewitness
RUN git clone https://github.com/FortyNorthSecurity/EyeWitness.git $TOOLS/eyewitness #&& \
	#cd $TOOLS/eyewitnes/Python/setup && \
	#./setup.sh	

# ffuf
RUN go get -u github.com/ffuf/ffuf

# gau
RUN wget https://github.com/lc/gau/releases/download/v1.1.0/gau_1.1.0_linux_amd64.tar.gz && \
	tar xvf gau_1.1.0_linux_amd64.tar.gz && \
	rm -rf tar xvf gau_1.1.0_linux_amd64.tar.gz && \
	mv gau /usr/bin/gau
	
# gf
RUN go get -u github.com/tomnomnom/gf && \
	git clone https://github.com/1ndianl33t/Gf-Patterns && \
	cd /Gf-Patterns/ && \
	mv *.json ~/.gf && \
	git clone https://github.com/dwisiswant0/gf-secrets

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
RUN go get -u github.com/tomnomnom/meg

# qsreplace
RUN go get -u github.com/tomnomnom/qsreplace

# secretfinder
RUN git clone https://github.com/m4ll0k/SecretFinder.git $TOOLS/secretfinder && \
	cd $TOOLS/secretfinder && \
	pip3 install -r requirements.txt

# unfurl
RUN go get -u github.com/tomnomnom/unurl

# Wordlists
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-large-directories-lowercase.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-medium-directories-lowercase.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-small-directories-lowercase.txt
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-large-files-lowercase.txt 
RUN wget -P $WORDLISTS/ https://wordlists-cdn.assetnote.io/data/manual/raft-large-words-lowercase.txt

# Config
RUN wget -P $DOTFILES/ https://raw.githubusercontent.com/D1al-T0ne/The-Switchboard/master/dotfiles/.bashrc
RUN wget -P $DOTFILES/ https://raw.githubusercontent.com/D1al-T0ne/The-Switchboard/master/dotfiles/.vimrc
RUN wget -P $DOTFILES/ https://raw.githubusercontent.com/D1al-T0ne/The-Switchboard/master/dotfiles/setup.sh
