#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]

then
    echo "you are not a user,proceed"

else

    echo "you are a super user"


fi 

dnf install mysql -y

echo "is script proceeding"