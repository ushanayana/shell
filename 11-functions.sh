#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -eq 0 ]
    then 
        echo "installation of $2 success"
    else 
        echo "installation of $1 is failure"
        exit 1  
    fi      
}
if [ $USERID -ne 0]

then 

    echo "you r not a super user"
    exit 1
else

    echo "you r super user"
fi


dnf install mysql -y
VALIDATE $? "installation of mysql"              

dnf install git -y
VALIDATE $? "installation of git"