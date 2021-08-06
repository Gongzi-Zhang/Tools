#!/bin/bash

############################################
# request header
# * User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36
# * Cookie: foo=bar
# * Content-Type: application/x-www-form-urlencoded, multipart/form-data, application/json
# * Referer: https://google.com?q=example
############################################

# usage: by default, a GET request
curl ipinfo.io/1.1.1.1

# debug
curl -v https://www.example.com	    # print communication process for debugging
curl --trace https://www.example.com	# binary route info
curl --trace --trace-time https://www.example.com   # detailed trace with timestamps
curl --trace-ascii https://www.example.com  # ascii route info
curl -i https://www.example.com	# include repsonse headers inthe output
curl -s -o /dev/null -D - https://www.example.com   # print only the response headers
curl -v -s -o /dev/null --stderr - https://example.com	# print only the request header
curl -w '%{response_code}' -s -o /dev/null https://example.com	# print only the response code

# redirection: -L: following redirection, default not
curl -L -d 'tweet=hi' https://api.twitter.com/tweet

# query: -G
curl -G -d 'q=kitties' -d 'count=20' https://google.com/search	# the same as:
curl https://google.com/search?q=kitties&count=20 	# the same as:

# request method: -X GET/POST/DELETE
curl -X POST https://www.example.com	# send a POST request
    
# all-round option: -H -- add any header you want
curl -H 'Accept-Language: en-US' https://google.com
curl -d '{"login": "emma", "pass": "123"}' -H 'Content-Type: application/json' https://google.com/login

# output: -o, -O
curl -o example.html https://www.example.com	# save response to specified file
curl -O https://www.example.com/foo/bar.html	# save response to bar.html (filename of URL)

# print received header: -i, -I/--head
curl -i https://google.com
curl -I https://google.com  # print received header only

# error message: -s, -S
curl -s https://www.example.com	    # don't print any error message
curl -S https://www.example.com	    # print only error message

# authorization:	-u
curl -u 'bob:12345' https://google.com/login	# this will set header: Authorization: Basic Ym9iOjEyMzQ1
curl https://bob:12345@google.com/login
curl -u 'bob' https://google.com/login	    # will prompt for password

# User-Agent: -A 
curl -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' https://google.com
curl -H 'User-Agent: php/1.0' https://google.com    # using -H
curl -A 'Googlebot/2.1 (+http://www.google.com/bot.html)' https://washingonpost.com

# cookie: -b (read cookie), -c (write cookie)
curl -b 'foo=bar' https://google.com	# sent a cookie name 'foo', with value 'bar'
curl -b 'foo1=bar; foo2=bar2' https://google.com	# sent two cookies
curl -b cookie.txt https://google.com	# sent cookie file
curl -c cookie.txt https://google.com	# write received cookie to cookie file

# post data : -d, --data-urlencode: by default, a POST request
curl -d'login=name&password=pw' -X POST https://google.com/login
curl -d'login=name' -d 'password=pw' -X POST https://google.com/login
curl -d '@data.txt' https://google.com/login	# post data from data.txt
curl --data-urlencode 'comment=hello world' https://google.com/login	# same as -d, but it will encode data in url encoding

# referer: -e
curl -e 'https://google.com?q=example' https://www.example.com
curl -H 'Referer: https://google.com?q=example' https://www.example.com

# post file: -F
curl -F 'file=@photo.png' https://google.com/profile	# upload photo.png 
curl -F 'file=@photo.png;type=image/png' https://google.com/profile	# with MIME type
curl -F 'file=@photo.png;filename=me.png' https://google.com/profile	# server will receive me.png

# SSL check
curl -k https://www.example.com	# don't check the SSL certificate

# bandwidth: --limit-rate
curl --limit-rate 200k https://google.com

# proxy: -x
curl -x socks5://james:cats@myproxy.com:8080 https://www.example.com
