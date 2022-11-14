#!/bin/bash
if [ $# -ne 1 ]; then "test si le nb d'argument n'est pas egal a 1"
    echo 'entrez un argument'
else
    echo '########## fichier dans ' $1
    ls $1 | grep -v ^d
    echo '########## repertoire dans ' $1
    ls -d $1  | grep ^d
fi