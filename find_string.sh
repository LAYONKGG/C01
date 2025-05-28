#!/bin/bash
# Ce code permet de verifier si un mot se trouve dans un fichier
echo ""
read file
echo ""
read mot
echo ""
#si toute la chaine existe dans le fichier
if  grep -q "$mot" "$file"; then
echo "La chaîne '$mot' a été trouvée dans $file"
else
echo "La chaîne '$mot' n'a pas été trouvée dans $file."
fi
