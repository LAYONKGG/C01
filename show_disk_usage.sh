#!/bin/bash
#Affiche l'utilisation du disque de manière lisible

echo "Utilisation du disque :"

#Utilise la commande df pour afficher l'utilisation du disque en format lisible (en Go, Mo, etc.)
df -h

echo ""  # Ligne vide pour aérer l'affichage

#Affiche l'espace disque utilisé dans le répertoire courant
echo "Utilisation du disque pour le répertoire courant :"
du -sh .  # -s : résumé ; -h : lisible
