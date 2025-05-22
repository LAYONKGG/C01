#!/bin/bash
#Crée un script pour compter le nombre de fichiers dans un dossier
#Vérifie si un argument est fourni
if [ -z "$1" ]; then
    echo "Usage : $O <nom_du_dossier>"
    exit 1
fi
#Vérifie si le répertoire existe
if [ ! -d "$1" ]; then
    echo "Erreur : '$1'  n'est pas un dossier valide."
    exit 1
fi
