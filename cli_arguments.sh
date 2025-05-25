#!/bin/bash
#lire tous les arguments comme un tableau des chaine
read -a args
#initialisation
k=1
#parcourir les arguments et les afficher; et k represente l'indice
for i in "${args[@]}"; do
echo "Argument $k: $i"
k=$(($k+1))
done
