# searching tips
1: search only specified sites:
    site:zhihu.com  [keyname]
2: wildcard *, +, -, |,  use asterisk to replace chars
    Tur*ey
    ~word:  search for synonym
    ~word:  search for synonym without original word
    +I	force searching
3: filetype
    filetype:txt 朝闻道
4: graph
    graph for x^2+y^2
    plot x^2+y^2
5: define 
    define:word
6: author
    author:name
7: 'in' gramma
> inurl | allinurl
    inurl include the first key word, while allinurl include all key words.
> intitle | allintitle
> inanchor | allinanchor
> intext | allintext
> inlinks | allinlinks
8: advanced usage
* link:url
    search for all links point to the 'url'
* related:url
    search for all similar webpages
* cache:url
* info:url

* * * "indexof/"
  e.g.
    "indexof/" inurl:lib
    "indexof/" cnki
    "indexof/" ppt 
    "indexof/" mp3
    "indexof/" swf
    "indexof/" "software"
    "indexof/" avi (wicked)

* * * see the world in google. Some special words will bring you IP address of thousands of camera.
    inurl:"viewerframe?mode="

* * * &imgtype=face

* * * passwd.txt site:virtualave.net
      config.txt site:.jp
      admin.txt site:.tw




# interesting
* set timer N seconds/minutes/hours
* do a barrel roll | Z or R twice | tilt | recursion | anagram 
* the Answer to Life, the Universe and everything
* zerg rush
* google in 1998
* google pacman
* atari breakout in google images


# usage
* Through translation service of google (translate this page), we can use Google as a transparent 
  Proxy, even though we do not translation at all.
* NQT: Network Query Tool
    a simple query tool that may be used to hide IP of investigator.

    Find them with Google:
    inurl:nqt.php intitle:"Network Query Tool"

# example
1: find out test scores excepting SAT in colleges between 2008 and 2010 in
nytimes.com
    site:nytimes.com ~college "test scores" -SATs 2008..2010
	|            |              |       |
	|            |              |       |
      sites         synonym    closed in "" subtraction

2: titanic inurl:(htm|html|php|pls|txt) intitle:indexof "last modified" (mkv|mp4|avi)

3: find proxy server:
    inurl:"nph-proxy.cgi" "Start browsing"
    "cacheserverreport for" "This analysis was produced by calamaris"

video: something -inurl:(htm|html|php|pls|txt) intitle:index.of "last modified" (mkv|mp4|avi)
audio: something -inurl:(htm|html|php|pls|txt) intitle:index.of "last modified" (mp3|wma|aac|flac)
