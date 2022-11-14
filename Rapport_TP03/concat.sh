#!bin/bash
if [ $# -ne 2 ] #test si le nombre de parametres est different de 2
    echo 'entrez 2 arguments'
else
    concat = $1''$2; #instensie la variable concat qui concatene les 2 parametres
    echo $concat;
fi