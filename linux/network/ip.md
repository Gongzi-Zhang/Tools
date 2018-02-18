# ipinfo

私网IP：10.0.0.0/8， 172.16.0.0/12， 192.168.0.0/16


# google ip
# 准备个多路代理或VPN，免费的VPNGate是不错的选择，链接到你要查找IP的地区，推荐日、韩、港台等亚太地区，其他地区很难有高速可用IP。命令行解析 google.com域名，查看结果。
# 解析命令一定要多执行几次，每次会有不同的结果。74或173开头的IP为Google官方服务器，大多都被封禁或干扰，基本可忽略。解析结果为非74或173开头IP的话，大致可确认为非官方GGC IP，如果这组IP尚未被公开传播过，那恭喜你，稀有IP到手。多次解析无果，可切换代理线路再次尝试。
nslookup google.com 8.8.8.8

nslookup -q=TXT \_netblocks.google.com 8.8.8.8

对于https地址：需用 telnet 检测。 对于http地址，直接ping就行。
end


OpenerDNS: 42.120.21.30

