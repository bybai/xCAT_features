#!/bin/sh

if [[ -z ${1} ]]; then
    echo "Error: provide the osimage name to modify as the first argument" 
    exit 1
fi 

if [[ -z ${2} ]]; then 
    echo "Error: provide a list of packages to append as the second argument" 
    exit 1
fi 

OSIMAGE_NAME=${1}
PKGLIST=${2}

echo "Adding the following packages list to ${OSIMAGE_NAME}: ${PKGLIST}"

PKGLIST_FILE=`lsdef -t osimage -o $OSIMAGE_NAME -i pkglist -c | cut -d= -f2`

if [[ -f $PKGLIST_FILE ]]; then
    for i in $(echo $PKGLIST | sed "s/,/ /g"); do
        echo "Adding $i to $PKGLIST_FILE ..."
        echo "$i" >> $PKGLIST_FILE 
    done
else
    echo "Error: the pkglist: $PKGLIST_FILE, does not exist ..."
    exit 1
fi

exit 0

