#!/bin/bash

cat << EOF
* the ANSI/VT100 terminals and terminal emulators are not just able to 
* display black and white text; they can display colors and formatted 
* text thanks to escape sequences.  Those sequences are composed of the
* Escape character ( often represented by "^[" or "<Esc>" -- think
* about when you are in VIM insert mode, what will you get when you 
* type Ctrl-V Esc) followed by some other chars: "<Esc>[FormatCodem"

  In Bash, the <Esc> char can be obtained with the following syntaxes:
    " \e
    " \033  # Octal
    " \x1B  # Hexal
EOF

# echo -e "\e[4mExamples:\e[0m"
# echo -e "\tCode(Bash)\t\t\tPreview"
# echo -e "\t\\\e[31mHello World\\\e[0m\t\t\e[31mHello World\e[0m"
# echo -e "\t\\\033[31mHello\\\e[0m World\t\033[31mHello\e[0m World"
# echo

echo -e "
	\e[4mExamples:\e[0m
	Code(Bash)		    Preview
	\\\e[31mHello World\\\e[0m]\t    \e[31mHello World\e[0m
        \\\033[31mHello\\\e[0m World    \033[31mHello\e[0m World
"
echo


cat << EOF
    note1: the "\e[0m" sequence removes all attribute (formatting and 
    colors). It can be a good idea to add it at the end of each colored
    text.
    note2: the examples in this page are in Bash but the ANSI/VT100 
    escape sequences can be used in every programming languages.
EOF

echo -e "
\e[4m\e[1mFormmatting                                                      
\e[0m
\e[1mSet\e[0m
"
echo
echo -e "
Code	Description	Example				    Preview
1       Bold/Bright	echo -e \"Normal \\\e[1mBold\"          Normal \e[1mBold\e[0m
2	Dim		echo -e \"Normal \\\e[2mDim\"           Normal \e[2mDim\e[0m
4	Underlined	echo -e \"Normal \\\e[4mUnderlined\"    Normal \e[4mUnderlined\e[0m
5	Blimk		echo -e \"Normal \\\e[5mBlink\"         Normal \e[5mBlink\e[0m
7	Reverse		echo -e \"Normal \\\e[7mReverse\"       Normal \e[7mReverse\e[0m
8	Hidden		echo -e \"Normal \\\e[8mHidden\"        Normal \e[8mHidden\e[0m
"

echo -e "\e[1mReset:\e[0m"
echo 

echo -e "
Code	Description		example                                        Preview
0	reset all attributes	echo -e \"\\\e[0mNormal Text\"                     Normal Text\e[0m
21	reset Bold/Bright	echo -e \"Normal \\\e[1mBold \\\e[21mNormal\"        Normal \e[1mBold \e[21mNormal\e[0m
22	reset Dim		echo -e \"Normal \\\e[2mDim \\\e[22mNormal\"         Normal \e[2mDim \e[22mNormal\e[0m
24	reset Underlined	echo -e \"Normal \\\e[4mUnderlined \\\e[24Normal\"   Normal \e[4mUnderlined \e[24mNormal\e[0m
25	reset Blimk		echo -e \"Normal \\\e[5mBlink \\\e[25mNormal\"       Normal \e[5mBlink \e[25mNormal\e[0m
27	reset Reverse		echo -e \"Normal \\\e[7mReverse \\\e[27mNormal\"     Normal \e[7mReverse \e[27mNormal\e[0m
28	reset Hidden		echo -e \"Normal \\\e[8mHidden \\\e[28mNormal\"      Normal \e[8mHidden \e[28mNormal\e[0m
"

echo -e "
\e[4m\e[1m8/16 Colors                                                
\e[0mThe following colors works with most terminals and terminal smulators.
\e[4mNOTE:\e[0m the colors can vary depending of the terminal configuration.
"

echo -e "
\e[1mForeground(text)\e[0m
Code    Color           Example                                     Preview
39      Default         echo -e \"Default \\\e[39mDefault\"             Default \e[39mDefault\e[0m       
30      Black           echo -e \"Default \\\e[30mBlack\"               Default \e[30mBlack\e[0m         
31      Red             echo -e \"Default \\\e[31mRed\"                 Default \e[31mRed\e[0m           
32      Green           echo -e \"Default \\\e[32mGreen\"               Default \e[32mGreen\e[0m         
33      Yellow          echo -e \"Default \\\e[33mYellow\"              Default \e[33mYellow\e[0m        
34      Blue            echo -e \"Default \\\e[34mBlue\"                Default \e[34mBlue\e[0m          
35      Magenta         echo -e \"Default \\\e[35mMagenta\"             Default \e[35mMagenta\e[0m       
36      Cyan            echo -e \"Default \\\e[36mCyan\"                Default \e[36mCyan\e[0m          
37      Light gray      echo -e \"Default \\\e[37mLight gray\"          Default \e[37mLight gray\e[0m    
90      Dark gray       echo -e \"Default \\\e[90mDark gray\"           Default \e[90mDark gray\e[0m     
91      Light red       echo -e \"Default \\\e[91mLight red\"           Default \e[91mLight red\e[0m     
92      Light green     echo -e \"Default \\\e[92mLight green\"         Default \e[92mLight green\e[0m   
93      Light yellow    echo -e \"Default \\\e[93mLight yellow\"        Default \e[93mLight yellow\e[0m  
94      Light blue      echo -e \"Default \\\e[94mLight blue\"          Default \e[94mLight blue\e[0m    
95      Light magenta   echo -e \"Default \\\e[95mLight magenta\"       Default \e[95mLight magenta\e[0m 
96      Light cyan      echo -e \"Default \\\e[96mLight cyan\"          Default \e[96mLight cyan\e[0m    
97      White           echo -e \"Default \\\e[97mWhite\"               Default \e[97mWhite\e[0m         
"

echo -e "
\e[1mBackground\e[0m
Code	Color		Example                                     Preview
49      Default         echo -e \"Default \\\e[49mDefault\"             Default \e[49mDefault\e[0m          
40      Black           echo -e \"Default \\\e[40mBlack\"               Default \e[40mBlack\e[0m            
41      Red             echo -e \"Default \\\e[41mRed\"                 Default \e[41mRed\e[0m              
42      Green           echo -e \"Default \\\e[42mGreen\"               Default \e[42mGreen\e[0m            
43      Yellow          echo -e \"Default \\\e[43mYellow\"              Default \e[43mYellow\e[0m           
44      Blue            echo -e \"Default \\\e[44mBlue\"                Default \e[44mBlue\e[0m             
45      Magenta         echo -e \"Default \\\e[45mMagenta\"             Default \e[45mMagenta\e[0m          
46      Cyan            echo -e \"Default \\\e[46mCyan\"                Default \e[46mCyan\e[0m             
47      Light gray      echo -e \"Default \\\e[47mLight gray\"          Default \e[47mLight gray\e[0m       
100     Dark gray       echo -e \"Default \\\e[100mDark gray\"          Default \e[100mDark gray\e[0m       
101     Light red       echo -e \"Default \\\e[101mLight red\"          Default \e[101mLight red\e[0m       
102     Light green     echo -e \"Default \\\e[102mLight green\"        Default \e[102mLight green\e[0m     
103     Light yellow    echo -e \"Default \\\e[103mLight yellow\"       Default \e[103mLight yellow\e[0m    
104     Light blue      echo -e \"Default \\\e[104mLight blue\"         Default \e[104mLight blue\e[0m      
105     Light magenta   echo -e \"Default \\\e[105mLight magenta\"      Default \e[105mLight magenta\e[0m   
106     Light cyan      echo -e \"Default \\\e[106mLight cyan\"         Default \e[106mLight cyan\e[0m      
107     White           echo -e \"Default \\\e[107mWhite\"              Default \e[107mWhite\e[0m           
"

echo -e "
\e[4m\e[1m88/256 Colors                                                
\e[0m
* some terminals can support 88 or 256 colors. Here are the control 
* sequences that permit you to use them.
\t\e[4mNOTE¹:\e[0mThe colors number 256 is only supported by vte(GNOME 
\tTerminal, XFCE4 Terminal, Nautinal, Terminator,...)
\t\e[4mNOTE²:\e[0mThe 88-colors terminal(like rxvt) does not have the 
\tsame map that the 256-colors terminals. For showing the 88-colors 
\tterminals color map, run the \"256-colors.sh\" script in a 88-colors
\tterminal.

\e[1mForeground\e[0m(text)
For using one of the 256 colors on the foreground, the control sequence
is \"<Esc>[38;5;ColorNumberm\" where ColorNumber is one of the following 
colors:
"

index=1
rest=1
echo -ne "\t"
for i in {1..256}; do
    let index+=1
    echo -ne "\e[38;5;${i}m${i}\e[0m\t"
    let rest=$index%10
    if [ ${rest} -eq 0 ]; then
	echo -e "\n"
    fi
done
echo

echo -e "
\e[1mBackground\e[0m
For using one of the 256 colors on the background, the control sequence is
\"<Esc>[48;5;ColorNumberm\" where ColorNumber is one of the following colors:
"
index=0
rest=1
for i in {0..255}; do
    let index+=1
    echo -ne "\e[48;5;${i}m${i}\t\e[0m"
    let rest=$index%10
    if [ ${rest} -eq 0 ]; then
	echo -e "\n"
    fi
done
echo
 
echo -e "
\e[1;4mAttributes combination                                              
\e[0m
Terminals allow attribute combinations. The attribute must be separated by
a semicolor(\";\")
\e[4mexample:\e[0m

Bold + Red foreground + Green Backgound:    echo -e \"\\\e[1;31;42m Yes it is awful \\\e[0m\"	\e[1;31;42m Yes it is awful \e[0m
"

echo -e "
\e[1;4mTerminals compatibility                                              
\e[0m
Currently, I think it is useless for me to know more details about terminal support for 
different formatting and colors. So I just skip over this table showing the 
support features of all kinds of terminal, which should be easily found with google.
* http://misc.flogisoft.com/bash/tip_colors_and_formatting * 
is one of the available source on the internet.
"
