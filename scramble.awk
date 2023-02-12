#!/bin/awk -f

# Alex Pinch, Feb. 11th 2023
# This script scrambles data using AWK's srand function

BEGIN{srand() }
{ lines[++d]=$0 }
END{
    while (1){
    if (e==d) {break}
        RANDOM = int(1 + rand() * d)
        if ( RANDOM in lines  ){
            print lines[RANDOM]
            delete lines[RANDOM]
            ++e
        }
    }
}