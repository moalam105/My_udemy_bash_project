========================================================================

# Speciale Variables, Command Substitution, if statement, Conditionals

#=========================================================================

#!/bin/bash


#Display the UID and username of the user executing the script.
#Display if the user is the root user or not

#Display the UID

        echo "Your UID is ${UID}"

#As you know, if you perceive something with a dollar sign and enclose it in curly braces that it's a variable.
#This variavle is UID, but we didn't assign or set a variable, so where is this variable come from? Remember!
#that we get a lot of stuff for free, when you use bash, one of the stuff you get  for free are special preset
#Variables.SO, let's look at the bash man page to see wherethis UID comes from? --> $man bash <-- By the way to
#navigate a man page - we're going to use vi keybindings, so to search -- forward slash and then the string
#--> /UID <--- hit enter to take us to the first instance of that, if we want to keep going down the file - to next
#occurance - hit 'n' to go backward - hit 'shift + n ' for reverse search --> ?Shell <--- Check all Shell vaiables


#Display the username

#We can display the user name by using id command --> type -a id <-- "id is /usr/bin/id" so, it is actually a program
# not a shell built in, so we can learn about it using the man page -->man id<---Btw in man page if you things that are
# enclosed in square brackets -->id [OPTION]...[USER]<-- that means they are optional, so here you can id with optional
# option and optional user - so actually you can run this command on its own and doesn't require any arguments, because
#they're all optional. Additionally if you see this three dots -that means you can specify multiple of whatever precedes it.
 #Before we display the user name, let's assign it to variable, let's call it a USER_NAME
        USER_NAME=$(id -un)  #if you want to store the output of a command into a variable, you use this syntax - variavle
                             #name equals dollar sign, openning of the parentheses then the command and the closing of the
                             #parenthesis -
        echo "Your user name is ${USER_NAME}"
                #An alternative syntax -- you will see sometimes as well
         USER_NAME=$`id -un`
         echo "Your user name is --# old Style  ${USER_NAME}"
