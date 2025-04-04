## EXERCICE 3 

### 1. Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux   
```bash
cat /etc/passwd  
```


### 2. Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?  
```bash
chmod u=rwx,g=r,o=r myfile
```


### 3. Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?   
Créer un fichier ".gitignore" dans le répertoire et inscrire la liste des fichiers à ignorer dans le fichier texte avec la commande `touch`. 
    
    
### 4. Quelles commandes git utiliser pour fusionner les branches main et test_valide ?  
- Se positionner sur la branche main avec :  
```bash  
git checkout main     
```
- Fusionner la nouvelle branche test_valide avec :
```bash  
git merge test_valide     
```
    
    
### 5. Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant : A REVOIR 

echo -e 'Malgré le prix élevé de 100\$\, il a dit \"Bonjour !\" au vendeur :\n-\"Bonjour est-ce que ce clavier fonctionne bien \?\"\n- \"Evidemment \! On peut tout écrire avec\, que ce soit des pipe \| ou bien des backslash \\\ \!\"\n- \"Même des tildes \~ \?\"\n- \"Evidemment \!'


### 6. La commande `jobs -l` donne le résultat ci-dessous :
### Quelle commande te permet de mettre en avant le processus gedit ?
```bash  
jobs -l | grep "gedit"       
```


### 7. Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.  
- Couche 2 : Data Link  
  Nous y trouvons les switchs et cartes réseaux : adresse les interfaces avec les adresses MAC.
  Les switchs permettent la transmissions de packets à l'interieur d'un réseau.
  La carte réseau permet l'envoie et la réception des données.   

- Couche 3 : Network  
  Nous y trouvons des routeurs  : determine le meilleur chemin pour transmettre les packets
  Le routeur permets aux packets de sortir du réseau. 
   
   
### 8. Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.
- cd : SetLocation  
- cp : CopyItem  
- mkdir : New-Item  
- ls : Get-ChildItem


### 9. Dans la trame ethernet, qu'est-ce que le payload ?  
Dans la trame ethernet, le payload est composé de : IP source, IP destination et les données à transporter.  


### 10. Pourquoi les classes IP sont remplacées par le CIDR ?
Pour éviter la penurie d'addresse IP : la classe C est souvent trop petite 256 adresses (petits/moyens réseaux) et la classe B beaucoup trop grande (plus de 65000). 
Si une entreprise avait besoin de 270 adresses, elle n'aurait pas pu utiliser la classe C car trop petite, mais la classe B qui sera beaucoup trop grande. Ce qui rends indisponible une grande plage d'adresse et participerai à une pénurie d'adresse.  

Le CIDR permets de réserver une plage d'addresse beaucoup plus adaptés puisqu'il permets d'avoir des plages plus ou moins grandes en fonction des besoins.  




