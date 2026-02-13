#!/bin/bash


USERID=$(id -u)

if [ $USERID -eq 0 ]

then
    echo "you are asuper user,proceed"

else

    echo "you are nota super user"


fi 

dnf install mysql -y

echo "is script proceeding"