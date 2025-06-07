#!/bin/bash

# Script d'installation de Terraform sur Ubuntu 22.04

set -e

echo "1. ===========Mise à jour du système et installation des paquets nécessaires..."
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

echo "2. ===========Téléchargement et ajout de la clé GPG HashiCorp..."
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

echo "3. ===========Vérification de l'empreinte de la clé..."
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "4. ===========Ajout du dépôt officiel HashiCorp à la liste des sources..."
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com jammy main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

echo "5. ===========Mise à jour de la liste des paquets..."
sudo apt-get update

echo "6. ===========Installation de Terraform..."
sudo apt-get install -y terraform

echo "7. ===========Vérification de l'installation :"
terraform --version

echo "===========Installation terminée avec succès !"
