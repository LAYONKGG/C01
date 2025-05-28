#!/bin/bash
#Vérifie que 3 arguments sont fournis : nombre1, nombre2, opérateur
if [ "$#" -ne 3 ]; then
    echo "Usage : $0 <nombre1> <nombre2> <opérateur>"
    echo "Opérateurs valides : + - * /"
    exit 1
fi

a="$1"
b="$2"
op="$3"
#Effectue le calcul selon l'opérateur
case "$op" in
    +) result=$(($a + $b)) ;;
    -) result=$(($a - $b)) ;;
    \*) result=$(($a * $b)) ;;  #  pour échapper *
    /)
        if [ "$b" -eq 0 ]; then
            echo "Erreur : division par zéro."
            exit 1
        fi
        result=$(($a / $b))
        ;;
    *)
        echo "Opérateur invalide. Utilisez +, -, * ou /."
        exit 1
        ;;
esac

echo "Résultat : $result"
