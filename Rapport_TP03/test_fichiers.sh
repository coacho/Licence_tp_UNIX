#!bin/bash
if [ $# -ne 1 ]; #test si le nb de parametre est different de 1 argument
    echo 'entrer 1 argument'
fi

if [ -d $1 ]; then #test si le parametre est un repertoire
    echo $1 ' est un repertoire'
fi
if [ -f $1 ]; then #test si le parametre est un fichier
    echo $1 ' est un fichier'
fi
if [ -r $1 ]; then #test si le parametre est readable
    echo $1 ' est readable'
fi
if [ -w $1 ]; then #test si le parametre est writable
    echo $1 ' est writable'
fi
if [ -x $1 ]; then #test si le parametre est executable
    echo $1 ' est executable'
fi
