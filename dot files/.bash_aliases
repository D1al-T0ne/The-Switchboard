vhost_ffuf(){
  
}

linkfinder(){
  python3 /opt/linkfinder/linkfinder.py -i $1 -o cli | grep -v http | grep -v // | sed 's/^\.\//' \
  | sed 's/^\///'
}
