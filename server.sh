while true;do (date=$(date);echo -e "HTTP/1.1 200 OK\nContent-Type: text/html\n\n Hello.\nThis is simple HTTP server for gl boot-camp.\nTime now is "$date".";) | nc -vv -l -p 8080 -n; done
