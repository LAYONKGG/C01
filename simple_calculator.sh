#!/bin/bash
#lire le nombre 1, le nombre 2 puis l'operateur
read nbre1 nbre2 op
# instruction en fonction de l'operateur
case "$op" in
    "+")

        echo "Résultat : $((nbre1 + nbre2))"
        ;;
    "-")

        echo "Résultat : $((nbre1 - nbre2))"
        ;;
    "*")

        echo "Résultat : $((nbre1 * nbre2))"
        ;;
    "/")

        if [ "$nbre2" -eq 0 ]; then

            echo "Erreur : division par zéro interdite"
        else

            echo "Résultat : $((nbre1 / nbre2))"
        fi
        ;;
    *)

        echo "Opérateur invalide. Utilisez +, -, * ou /"
        ;;
esac
