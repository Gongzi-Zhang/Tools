arch	    : print machine hardware name (uname -m)
dmesg	    : print the message buffer of the kernel
**dmidecode**   : info from DMI interface from BIOS
hddtemp	    : check temp. of hard drive
hwinfo	    : info for all the hardware
lscpu	    : info about CPU
lshw	    : a subset of hwinfo; see also hwinfo
lspci	    : list info about all PCI buses and devices in the system
lsusb	    : list info about all USB buses and devices
sensors	    : check temp. of cpu and mother board


# terminal
stty	    : set the options for a terminal
tput	    : change terminal characteristics
tty	    : return user's terminal name


# /proc
CPU:	/proc/cpuinfo
pci:	/proc/pci
memory:	/proc/meminfo
USB:	/proc/bus/usb/devices
keyboard|mouse:   /proc/bus/input/devices
IRQ:	/proc/interrupts
disk:	/proc/partitions
version:    /proc/version
ioports:    /proc/ioports
swap:	/proc/swaps


# example
dmidecode --type memory	# list memory device info

head -n 1 /etc/issue   # 查看操作系统版本
hostname               # 查看计算机名
lsmod                  # 列出加载的内核模块
free -m                # 查看内存使用量和交换区使用量
grep MemTotal /proc/meminfo   # 查看内存总量
grep MemFree /proc/meminfo    # 查看空闲内存量
uptime                 # 查看系统运行时间、用户数、负载
cat /proc/loadavg      # 查看系统负载磁盘和分区
mount | column -t      # 查看挂接的分区状态
fdisk -l               # 查看所有分区
swapon -s              # 查看所有交换分区
hdparm -i /dev/hda     # 查看磁盘参数(仅适用于IDE设备)
ifconfig               # 查看所有网络接口的属性
iptables -L            # 查看防火墙设置
route -n               # 查看路由表
netstat -lntp          # 查看所有监听端口
netstat -antp          # 查看所有已经建立的连接
netstat -s             # 查看网络统计信息进程
ps -ef                 # 查看所有进程
id		       # 查看指定用户信息
last                   # 查看用户登录日志
cut -d: -f1 /etc/passwd   # 查看系统所有用户
cut -d: -f1 /etc/group    # 查看系统所有组
chkconfig –list        # 列出所有系统服务
chkconfig –list | grep on    # 列出所有启动的系统服务程序

该如何才能知道系统都有什么硬件设备，有如下几种方式：
方式一：
使用lsdev命令，可以显示系统中的设备及其特征。
例如：lsdev -C
但是一般的系统上可能没有这个命令，比如fedora上面就没有这个命令。
方法二：
显示/proc/dev文件，这个文件记录了系统的一些硬件信息，
例如：cat /proc/dev
方法三：
如果要查找特定的usb设备，则可以使用lsusb命令，列出所有的usb设备。
如果要查找特定的pcmcia设备，则可以使用lspcmcia命令，列出所有的pcmcia设备。
如果要查找特定的pci设备，则可以使用lspci命令，列出所有的pcm设备。 

Linux查看硬件信息及驱动设备

用硬件检测程序kudzu探测新硬件：service kudzu start ( or restart)


常用命令整理如下：

dmidecode查看硬件信息，包括bios、cpu、内存等信息

dmesg | more 查看硬件信息



显示PCI设备详细信息
当前很多常用硬件都是PCI（Peripheral Component Interconnect）设备，如声卡、网卡、USB控制器等，稍老一点的显卡一般也是PCI设备。很可能由于要安装驱动或其它的需要查看PCI设备的详细信息。lspci命令方便地实现了这一点。 

lspci最简单的使用方法是： 

lspci它显示出通常对我们最有用的信息。 

如果要更的详细信息，可以： 

lspci -vlspci -vvlspci -vvv如果有的项目不能正常翻译成人能理解的文字，可以 

update-pc)ds使用此功能需要确认您已连到互联网，能访问国外网。
