# Projet_os_user - Sherlock 13

Ce projet est une version multijoueur du jeu **Sherlock 13 ** implémentée avec une interface graphique SDL2 (client) et un serveur TCP multithread.

## Structure du projet 
.|── client/ ├── sh13.c # Code source du client (SDL)  

             ├── Makefile # Compilation du client   
             
             ├── # Images .png et police  
             

.|── server/ │ ├── server.c # Code source du serveur 

               ├── Makefile # Compilation du serveur 
               
               
├── Makefile # Makefile principal (compile client + serveur) 


|── README.md # Ce fichier


|── run_client.sh 


## Compilation

### Prérequis

Il faut s'asurer d’avoir les bibliothèques suivantes installées :

'''bash 
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev


### Compilation du client et du serveur
Dans le dossier principal du projet, il faut dans le terminal taper:

'''bash : 

make 

Ce qui compile: 

- client/sh13 : le client graphique
et le

- server/server : le serveur TCP

### Compilation séparée

- client uniquement : '''bash :
  
  make client 

- serveur uniquement : '''bash :
  
  make server


### Nettoyage 
Pour supprimer les exécutables:

'''bash

make clean

## Exécution
1. Lancer le serveur

  Dans un terminal : 
  
  ./server/server <port>
  
  ex: ./server/server 10075
  
  sinon si on est dans le dossier du serveur déjà : ./server <port>

2. Lancer un client
   
  Dans un autre terminal, il faut exécuter : 
  
  ./client/sh13 <server_ip> <server_port> <client_ip> <client_port> <nom_du_joueur>
  
  ex: ./client/sh13 127.0.0.1 10075 127.0.0.1 20002 Adi

Notes:  
  - Chaque client doit avoir un port et un nom différents.
  - Le projet utilise des sockets TCP, threads, mutex, et une interface SDL2.
    

## Petit plus pour les tests rapides 

Un script est fourni pour lancer rapidement 4 clients en local avec des ports différents. Cela permet de simuler une vraie partie sans avoir à tout ouvrir manuellement.

Étapes :
1. Il faut s'assurer que le serveur est compilé et il faut l'exécuter:
   
   ./server/server 10075
   
3. Dans un autre temrinal, il faut rendre le script exécutable (une fois suffit):
   
  chmod +x run_client.sh

5. Il faut ensuite lancer le script pour démarrer automatiquement les 4 clients :
  ./run_client.sh

Détails:
  - Les clients sont lancés avec les noms: Balou, Baguera, Tarzan , Jasmine
  - Chaque client utilise un port unique: 20002 20003 20004 20005
  - Ils se connectent automatiquement au serveur local sur 127.0.0.1:10075
  - Pour changer les noms et els ports il faut modifier le fichier run_client.sh





Asdjad BAKARY
21315742
EI4 2024-2025 
FISA















