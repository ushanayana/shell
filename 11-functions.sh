#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
VALIDATE(){
    if [ $1 -eq 0 ]
    then 
        echo -e "$2 $G success"
    else 
        echo -e"$1 is $R failure"
        exit 1  
    fi      
}
if [ $USERID -ne 0 ]

then 

    echo -e "$R you r not a super user"
    exit 1
else

    echo -e "$G you r super user"
fi


dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installation of mysql"              

dnf install git -y &>>$LOGFILE
VALIDATE $? "installation of git"