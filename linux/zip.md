# zip and unzip

* messy code problem
    Because zip does not specify a default encoding, therefore zip files produced in Windows use
non-UTF8 encoding, like GBK/GB2312, resulting in messy code when you decode them in Linux Platform.
A tricky solution to this problem is:
>	unzip -O cp936 example.zip
>	unzip -O GBK   example.zip
