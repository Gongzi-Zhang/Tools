# netcat utility
TIMEOUT=9
IDPOET=113
HOST="google.com"
nc -z -w $TIMEOUT $HOST $IDPOET  # -z scans for listening daemons

# performing an HTTP request
printf "GET /hypertext/WWW/TheProject.html HTTP/1.0\r\rHost: info.cern.ch\r\n\r\n" | nc info.cern.ch 80

# Setting up a one-shot webserver on port 8080 to present the content of as file
{ printf 'HTTP/1.0 200 OK\r\nContent-Length: %d\r\n\r\n' "$(wc -c < some.file)"; cat some.file; } | nc -l 8080

# checking whether UDP ports (-u) 80-90 are open on some host
nc -vzu 192.168.0.1 80-90

# port scanning 
nc -v -n -z -w 1 192.168.1.2 1-1000

# Proxying
mkfifo backpipe
nc -l 12345 0<backpipe | nc www.google.com 80 1>backpipe

# SSL proxy
mkfifo tmp tmp2
nc -l 8080 -k > tmp < tmp2 &
while true; do
    openssl s_client -connect www.google.com:443 -quiet < tmp > tmp2
done
