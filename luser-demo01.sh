#==========================================================================================

# Getting Started with Shell Scripting; Naming, permission, Variables, Variables, Builtins

#==========================================================================================

# Shebang = #!
#You have to start out each shellscript with this "shebang" and then the path to the interpreter
#So what will happen when you execute this script is that the commands inside the script will be interpreted
#by forward slash bin, forward slash bash ... Now if you have put in another interpreter for example, let's
#say - #!usr/bin/python or #!usr/bin/ruby <-- now that's python or ruby script
#So, really what happen is when you execute this script -- /bin/bash executed and the file name get passed
#to that script #!/bin/bash <FILENAME>... And what happen is bash then executes everything in this file.
# if you do not supply a shebang and specify an interpreter on the first line of the script
#The command in the script will be excuted using the current shell - and that may not be what you want
#For example if you have some bash specific items in your shell script and you happen to be using the
# C sh shell when you execute it then you are going to end up with some errors



#!/bin/bash

#This script displays various information to the screen

#Display the text 'Hello'
echo 'Hello'

#file extention like (.sh) are irrelevant in unix/lynix .. Now, what is relevant is an execute bit on the
#Script =  file permission, $chmod 755 luser-demo01.sh .. and to execute ./nameOfThe Script
#. represent this directory, .. represents parent directory, so if we did cd .. we move to the directory
#above the directory we were in
# /  forward slash is the directory separator-- so ./ means this directory/ then the name of the script
# so that's how you execute a file in your current directory --- this is equivalent to the full path
# [pukj0app1@ulpaxid01 udemy]$ ./luser-demo01.sh
# Hello
# [pukj0app1@ulpaxid01 udemy]$ pwd
# /home/pukj0app1/z_practise_moh_ala/udemy
# [pukj0app1@ulpaxid01 udemy]$ /home/pukj0app1/z_practise_moh_ala/udemy/luser-demo01.sh
# Hello
# [pukj0app1@ulpaxid01 udemy]$ ./luser-demo01.sh
# Hello
# [pukj0app1@ulpaxid01 udemy]$ pwd
# /home/pukj0app1/z_practise_moh_ala/udemy
# [pukj0app1@ulpaxid01 udemy]$ /home/pukj0app1/z_practise_moh_ala/udemy/luser-demo01.sh
# Hello

# So echo command, just display whatever is passed to it but where does echo come from? echo is actually
# shell builtin, it doesn't require any external program to execut, its really just part of bash
#So how do we know, it's a shell built in ? - so you can use the type command - which is also shell builtin
# to show if it's shell built in or not
#[pukj0app1@ulpaxid01 udemy]$ type echo
#echo is a shell builtin
# BTW if you want to get help on shell builtin ... use the help command / for the command that is not shell
# built in ... use manual to get help

#Assign a value to a variable
WORD='script'
#no space in between the equal sign
#strings are enclosed in quotation marks - either single quotation mark or double quotation mark
#Variable name cannot start with a digits _ 3WORD is not a valid variable name

#Display that value using variable name
echo "$WORD"

# you may have notice that in the previous echo statement i used single quotation but in this double
# Single quotes prevents the expansion of variables - so if you want echo to display - exactly what you
# have specify, put it in single quotes _and if you want variables to be interpreted - make sure you use
# double quote - this concept is apply to other command as well

#Demonstrate that single quotes cause variables to Not get expanded
echo '$WORD' #will return $WORD not the value

#Combine the variable with hard-coded text
echo "This is a shell $WORD"

#Display the content of the variable using an alternative syntax
echo "This is a shell ${WORD}"

#Append text to the variable <-- this case we have to use ${} syntax
echo "${WORD}ing is fun"

# Show how not to append text to a variable
# This doesn't work
echo "$WORDing is fun!"

#[pukj0app1@ulpaxid01 udemy]$ ./luser-demo01.sh
#Hello
#script
#$WORD
#This is a shell script
#This is a shell script
#scripting is fun
# is fun!  <-- as there is no variable name WORDing

#Create a new variable
ENDING='ed'

#Combine the variables
echo "${WORD}${ENDING}"
