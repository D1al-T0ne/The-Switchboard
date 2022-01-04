vhost_ffuf(){
  name=$(echo $1 | cut -d '/' -f3)
  ffuf -c -u $1 -H "Host: FUZZ" -H "User-Agent: " -w vhost.txt -ac -mc all -fc 400,404
}

linkfinder(){
  python3 /opt/linkfinder/linkfinder.py -i $1 -o cli | grep -v http | grep -v // | sed 's/^\.\//' \
  | sed 's/^\///'
}

httprobe_xl(){
  httprobe -p http: 81 -p http: 300 -p http: 443 -p http: 591 -p http: 593 -p http: 832 -p http: 981 -p http: 1010 \ 
  -p http: 1311 -p http: 2082 -p http: 2087 -p http: 2095 -p http: 2096 -p http: 2480 -p http: 3000 -p http: 3128  \
  -p http: 3333 -p http: 4243 -p http: 4567 -p http: 4711 -p http: 4712 -p http: 4993 -p http: 5000 -p http: 5104  \
  -p http: 5108 -p http: 5800 -p http: 6543 -p http: 7000 -p http: 7396 -p http: 7474 -p http: 8000 -p http: 8001  \
  -p http: 8008 -p http: 8014 -p http: 8042 -p http: 8069 -p http: 8080 -p http: 8081 -p http: 8088 -p http: 8090  \
  -p http: 8091 -p http: 8118 -p http: 8123 -p http: 8172 -p http: 8222 -p http: 8243 -p http: 8280 -p http: 8281  \
  -p http: 8333 -p https: 8443 -p http: 8500 -p http: 8834 -p http: 8880 -p http: 8888 -p http: 8983 -p http: 9000 \
  -p http: 9043 -p http: 9060 -p http: 9080 -p http: 9090 -p http: 9091 -p http: 9200 -p http: 9443 -p http: 9800  \
  -p http: 9981 -p http: 12443 -p http: 16080 -p http: 18091 -p http: 18092 -p http: 20720 -p http: 28017
}
