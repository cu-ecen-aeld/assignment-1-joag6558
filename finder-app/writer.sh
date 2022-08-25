#!/bin/bash
##############################################################################
#
# Script to find a string in the given directory
#
# To Use:
#
#       ./writer.sh /tmp/aesd/assignment1/sample.txt ios
##############################################################################

set -e
set -u

if [ $# -lt 2 ]
then
    echo "writer.sh scripts needs to 2 arguments, see example below."
    echo "writer.sh /tmp/aesd/assignment1/sample.txt ios"
    exit 1
else
    DIR_NAME=$1
    writefile="${DIR_NAME%/*}"
    #echo "dir: ${writefile}"
    if [ ! -d "${writefile}" ]
    then
        #echo "creating dir ${writefile}"
        mkdir -p "${writefile}"	
    fi
    FILE_NAME="${DIR_NAME##*/}"
    #echo "file: ${FILE_NAME}"
    writestr=$2
    cd ${writefile} && touch ${FILE_NAME} && echo "${writestr}" > ${FILE_NAME}
fi

#echo "${writefile}" "${writestr}"

#exit 0

