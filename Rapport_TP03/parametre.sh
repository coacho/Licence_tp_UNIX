#!/bin/bash
echo ' vous avez rentre' $# 'param' ; # $# retourne le nb de paramètres
echo 'nom du script : ' $0; #0 retourne le nom du script
echo '3eme argument : ' $3; #; $i retourenle parametre a l'index i, ici le 3eme
echo 'liste des toujs les parametres :' $@; #@ retourne une liste de tous les parama