#!/bin/sh -l

# Lire le message depuis les arguments
MESSAGE="$1"

mkdir -p /output

# Générer un fichier contenant le message
echo "Votre message : $MESSAGE" > /output/message.txt

# Afficher le message dans les logs
echo "Message généré : $MESSAGE"

# Définir la sortie de l'action
echo "output-message=Votre message : $MESSAGE" >> "$GITHUB_OUTPUT"