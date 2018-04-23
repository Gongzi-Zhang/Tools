# 
TCPing: 

Linux 系统中最常用的网络配置命令包括 ifconfig,route.其中 ifconfig 用来查
看和配置网络接口等通常是网卡信息包括网络接口设备的 IP 地址. route 用来管理 
Linux 系统内核中的路由表掩码. 它最大的用途就是用来设定静态的路由表项, 通常
是在系统用 ifconfig 配置网络接口后, 用它来设定主机或者一网段的 IP 地址应该
通过什么接口发送等.


Introduction
--------------
    交换机：二层网络设备，工作在数据链路层，用MAC地址转发，只能用于同一
个网段内的设备之间数据帧的交换。
    路由器：是一个三层网络设备，工作在TCP/IP协议层，进行IP包转发，很
明显，第三层的IP转发依赖于第二层的MAC转发，因而路由器实际上可以作为
交换机使用（可能需要相应软件支持）。
    既然路由有交换机功能，为什么需要交换机呢？因为交换机工作原理简单，
转发效率更高，在同一个网段内（一般不超过254台设备），明显交换机优于
路由器。按交换机工作原理，如果设备支持，很明显全世界的网络链接只用
交换机就好，为什么需要高级的路由器或者网关呢？因为实际使用中，存在
不同的硬件设备与网络通信协议，所以需要网关来连接不同网络；而路由器
则实现了网络的分段，使用树形结构提高转发效率。想象一下二进制计算机与
八进制计算机，同样一个数，在二进制计算机中存储需要3个比特，在八进制
计算机中只需要一个；但为确定数的大小，八进制计算机平均需要4次查询，
而二进制计算机只需要3次就行，路由器便是二进制的，而假想的一个支持
天下所有设备的交换机便是N（N->∞)进制的。效率比较一目了然。
    目前家用路由器应该是路由与网关（甚至是猫：调制解调器）的集合体。
家用路由器应该不提供交换功能，这点可以实验确认，给内网机器发送数据包，
看tracerout结果是否通过了网关即可。因为对于家用路由而言，连接设备其实
不多，内网通讯需求不强。所以干脆只工作在第三层，效率损失并不大。



### Usual Port:
DNS standard prot: 53
    google DNS: 8.8.8.8
    114 DNS:	114.114.114.114
http protocol: 80
https:	443
ftp:	21
ssh:	22
telnet:	23


# config files
/etc/hosts
/etc/services	
    the port used by different kinds of service: http, ftp, ssh....
/etc/protocols
    IP package protocol: ICMP/TCP/UDP
/etc/host.conf
/etc/nsswitch.conf
/etc/resolv.conf

### Doubts
* VPN: In my understanding, VPN is just another private protocol, nothing different
  than any other public protocols, why it could be regarded as a virtual netfase.
