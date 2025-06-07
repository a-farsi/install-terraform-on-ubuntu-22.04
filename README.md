## Installation de Terraform sur Ubuntu 22.04 

Terraform est un outil utilisé pour définir l’infrastructure en utilisant HCL.

Pour l'installer sur ubuntu 22.04, utilisez le script shell _install-terraform.sh_ qui implémente les étapes suivantes : 

1. Mise à jour du système et installation des paquets nécessaires: gnupg, software-properties-common, curl; 

2. Ajout de la clé GPG de HashiCorp pour sécuriser les paquets; 

3. Vérification de l’empreinte de la clé pour s’assurer de son authenticité; 

4. Ajout du dépôt officiel HashiCorp à la liste des sources de paquets; 

5. Mise à jour des paquets et installation de Terraform; 

6. Vérification de l'installation à l'aide de la commande: 

```
terraform --version. 
```


