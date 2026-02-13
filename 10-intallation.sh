#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]

then
    echo "you are not a user,proceed"

else

    echo "you are a super user"


fi 

dnf install mysql -y 

if [ $? -eq 0 ]

then
    echo "installation of mysql is success"

else 
    echo "installation of mysql is failure"
    exit 1
fi        

