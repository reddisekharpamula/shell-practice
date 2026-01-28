#!/bin/bash

NUMBER=$1

# -gt ( greater than )
# -lt ( less than )
# -ge ( greater than or equal to )
# -le ( less than or equal to )
# -eq ( equal to )
# -ne ( not equal to )

if [ $NUMBER -gt 10 ]; then
    echo "The number $NUMBER is greater than 10."
elif [ $NUMBER -lt 10 ]; then
    echo "The number $NUMBER is less than 10."
else
    echo "The number is equal to 10."
fi

