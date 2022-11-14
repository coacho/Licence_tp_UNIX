# TP 02 : Services, processus signaux

## 1 - Secure Shell : SSH

### 1.1 Exercice : Connection ssh root (reprise fin tp-01)

 - Il faut modifier le fichier /etc/ssh/sshd_config avec la commande nano ou vi et passer la ligne en "PermitRootLogin yes"

### 1.2 Exercice : Authentification par clef / Generation de clefs

 - sous windows, générer un clef ssh publique avec la commande **ssh-keygen**
 - ajouter l'ip et le nom du serveur Debian dans le fichier *C:\Windows\System32\drivers\etc\hosts* (j'uttise cmder sur mon poste)

 ### 1.3 Exercice : Authentification par clef / Connection serveur

 - passer le fichier *authorized_keys* en read-only avec la commande **chmod -R o-w authorized_keys**

 ### 1.4 Exercice : Authentification par clef : depuis la machine hote
 Pour se connecter à depuis la machine hote, faire la commande, **ssh nom_utilisateur@nom_machine**

 ### 1.5 Exercice : Securisez

- désactiver l'authentification par mot de passe, en modifiant le fichier */etc/ssh/sshd_config* modifier la ligne **PasswordAuthentication yes** --> **PasswordAuthentication no**
- changer le port de base à 22 pour un autre

 ## 2 - Processus
1 -
- TIME indique le temps passé à utiliser le CPU depuis son lancement
- Le system à le RSS (Resident Set Size) le plus élevé, il utilise le plus le processus
- le lancement de la machine **sbin\init** (je sais pas le vérifier)
- il faut regarder avec la commande **ps -xa --sort=-pid** pour voir l'ensemble des processus lancée en les triants par PID
- uptime donne le temps depuis lequel la machine tourne

2 -
- la commande **ps auxt** affiche le PPID avec ps
-

3 - 
-  **pstree -p -h** donne le PPID

4 - 
- appuyer sur f et selectinner PID
- **systemd** est le processus le plus gourmand,  c'est le système d'exploitation
- x et z font passer l'interface en couleur rouge
- htop utiliser les touche "F*" du clavier et est par défault en couleur


### 3 - Exercice 2 : Arrˆet d’un processus
- les 2 script :

e=1
current_date=`date`
while [ $e = 1 ]
do
echo $current_date;
done

### 4 - Exercice 3 : les tubes

 - affiche la commande **ls** avec les "paramètre d'affichage" de **cat**
 - met le résultat de la commande précédente dans le fichier **liste**
 - affiche le résultat dans la console et dans le fichier liste
 - affiche le nombre de ligne du fichier liste

 
### 5 - Journal syst`eme rsyslog

- **rsyslog** n'est pas sur ma machine, il permet l'échange de message sur un réseau IP

- cron permet la planification de tache ex: execution script shell

- **tail -f** affiche les premières lignes d'un fichier

- **/etc/logrotate.conf** permet de configurer les log dans **/var/log**

- **dmesg -H** affiche  dmesg en versdion lisible pour un humain