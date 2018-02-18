# Screen is a multiplexer which allow you to run jobs event after 
# loggin off. It takes many different running processes and manages
# which of them gets displayed to the user. It is best suitable for 
# running such jobs:
# 1: movie downloads
# 2: command line mail clients
# 3: log watching
# 4: giant compiles


# Terminology
session:
    A session is created when you start a new instance of screen on the
    command line. Within a session, you can have multiple programs
    running. A single session can hold many windows.
window:
    Windows are created inside a session, and manage the runnign 
    programs. By default, a single new window is created when you 
    start up screen to display the running program. You can create 
    many windows within a single session and quickly switch between 
    them.
region: 
    a region is a part of the current window. Whne you do a split, you
    are creating two different regions within the same window. Each 
    region can then display a different program.

# Commnad
# command for screen begins with 'Ctrl-A[^A]'
^A ?
    brings up a list of all possible commands.
^A :
    brings up a command prompt that you can use to type commnads and
    set var.
screen -S 'name'
    name your new session launched by screen.
^A :sessionname 'name'
    a rescue if you forget assigning the session a name in the start
^A d
    detaching a session
screen -r
    reconnect to a previously detached session if you've only got
    one session running.
screen -ls
    list running sessions, then you can specify the name or PID of
    the session after the -r command line option and that session will
    be attached.
^A c
    start up a new active window 
^a A
    rename a window.
^A w
    list all the windows
^A 0-9
    brings the according window up
^A S
    split the screen
^A <tab>
    switch between different regions.
^A Q
    make the current region the only visible one, while hiding other
    regions(keep programs running continuely) 
^A X
    kill off the current region
^A ^D
    exit current window
exit
    exit current window
^A M
    monitering the window, when activity in that window occures, 
    screen will display a message at the bottom.
^A _	
    moniter for 30s of inactivity by pressing this command in the 
    window you want to moniter(say, when you are compiling a program,
    you want to know when it will finish).
screen -x src
    attach to session 'src' without detaching it before in another 
    place

# Multiple Users
^A :multiuser on
    enable multiuser mode
^A :aclchg  david +r "#"
    give david (read)permission to connect 
^A acldel   david
    delete user david
