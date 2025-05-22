#!/bin/bash

#Vérifie que le répertoire est passé en argument
if [ "$#" -ne 1 ]; then
    echo "Usage : $0 <répertoire>"
    exit 1
fi

#Assigner l'argument à une variable
repertoire="$1"

#Vérifie si le répertoire existe
if [ ! -d "$repertoire" ]; then
    echo "Erreur : Le répertoire '$repertoire' n'existe pas."
    exit 1
fi

#Compte le nombre de fichiers dans le répertoire
count=$(ls -l "$repertoire" | grep -v ^d | wc -l) 

echo "Le répertoire '$repertoire' contient $count fichier(s)."
