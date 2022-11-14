# TP 01 : Installation Serveurs

## 1 - Installation Machine virtuelle
Suivit du tp pour l'instalation de la VM Debian.
_____
## 2 - Post Instalation
___________________
### 2.1 configuration ssh
La commande **apt** permet la gestion des packets du logiciel.

 - **apt search** cherche un packet spécifié 
exemple: *apt search ssh*

 - **apt install** installe un packet spécifié
 - exemple:  *apt install ssh*
_____________
 ### 2.2 Connection

Une fois l'instalation du packet open-ssh, il faut ajouter l'autorisation de connection à la vm en root directement depuis un autre machine en modifiant la ligne **PermitRootLogin yes** dans le fichier de config **/etc/ssh/sshd_config**

Génerer ensuite un clef ssh sur la vm 
avec la commande **ssh-keygen -t rsa**

Redemarer le service ssh avec **service ssh restart**

Copier la clef ssh depuis la vm sur la machine hôte avec la commande :
 **ssh-copy-id -i ~/.ssh nomduFichierAveclaClef.pub utilisateur_distant@$hôte_distant**

On peux alors se connecter sur la vm depuis la machine hôte avec la commande 
: **ssh utilisateur_distant@$hôte_distant**
______________________________
 ### 2.3 Nombre de packet
La commande, dpkg -l | wc -l indique 353 packet sur la machine.
__________________________
 ### 2.4 Space Usage
<img width="393" alt="Capture TP01_2 4" src="https://user-images.githubusercontent.com/39912074/194924044-ee85577e-ff60-4135-971e-93f8718d099c.PNG">

Espace disque utilisé sur la machine
_____________________________

### 2.5 Indiquer dans le rendu et expliquer les commandes et le resultat obtenu

- **echo** retourne le resulta des variable d'environnement
  
   ici **echo $LANG** retourne: *en_US.UTF-_8* soit la variable $LANG, la langue du système

  <img width="250" alt="Capture TP01_2 5" src="https://user-images.githubusercontent.com/39912074/194923473-ddd03648-04a3-40f4-abe8-d076968a1621.PNG">

- **hostname** retourne l'hôte de la machine appartient
  **hostname -d** retourne le domaine de auquel appartient la machine

- la commande **cat /etc/apt/sources.list | grep -v -E ’^#|^$’**  affiche le fichier : /etc/apt/sources.list sans les lignes en commentaire "#". Ce fichier contient la liste des connection ftp configurées avec la machine

- la commande : **cat /etc/shadow | grep -vE ’:\*:|:!\*:’** renvoie le fichier shadow contenant les mot de passe, mais sans les afficher
- la commande : **cat /etc/passwd | grep -vE ’nologin|sync’** retourne les utilisateurs sans login

- la commande **fdisk** permet la manipulation et le partitionnement du disque-dure (ajout/modification/suppression de partitions)
  **fdisk -l** indique les partions présente dans le fichier */proc/partitions*

- la commande **df** retourne la quantité d'espace utilisé par les système et ficheirs. 
**df -h** retourne le résultat avec des indiquation comme M ou G  pour explicité les tailles contrairement à la commande sans argument qui retourne les tailles en octets

_____

## 3. Aller plus Loin
___
### 3.1 installation automatique

Une pressed est une version déja configurer d'un OS. On peux en faire une soit même si l'on veux dupliquer l'instalation sur plusieurs machines ou en récuperer une pour simplifier l'instalation.

### 3.2
Dans le contexte de cette vm on ne peux que se log en root donc pour changer de mot de passe ils faut taper **sudo bash** puis ***passwd**

<img width="327" alt="Capture TP01_3 2" src="https://user-images.githubusercontent.com/39912074/194931548-bb77ecb8-1041-4794-a0a6-71518b33b3de.PNG">



