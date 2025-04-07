#########################################################################
#!/bin/bash
#Version 1.0
# Auteur : Pauline Prak
# Descriptif : Script - Exercice 2 Checkpoint 1 TSSR 
#########################################################################
user=$(echo $*)
function adduser()
{
    if [ $# -ne 0 ] #vérifier la présence d'arguments à l'appel du script 
    then
        if cat /etc/passwd | grep -w $user > /dev/null 2> /dev/null  #vérification existence $user dans le systeme  
        then #si $user existe, alors message existe deja 
            echo "L'utilisateur $user existe déjà" 
        else #si $user n'existe pas, script continue 
            sudo useradd $user > /dev/null 2> /dev/null #création $user
                if cat /etc/passwd | grep -w $user > /dev/null 2> /dev/null #si user a bien été créer 
                then #si $user existe, alors message existe deja 
                    echo "L'utilisateur $user a été crée" 
                else #si $user n'existe pas, erreur et script continue  
                    echo "Erreur à la création de l'utilisateur $user"
                fi 
        fi

    else #pas d'argument, message erreur et fin de script" 
        echo -e "Il manque les noms d'utilisateurs en argument \nFin du script"
        exit 1 
    fi
}

for user in echo $*; 
do
    adduser $user
done
