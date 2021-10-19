vhost_ffuf(){
  name=$(echo $1 | cut -d '/' -f3)
  ffuf -c -u $1 -H "Host: FUZZ" -H "User-Agent: " -w vhost.txt -ac -mc all -fc 400,404
}

linkfinder(){
  python3 /opt/linkfinder/linkfinder.py -i $1 -o cli | grep -v http | grep -v // | sed 's/^\.\//' \
  | sed 's/^\///'
}
