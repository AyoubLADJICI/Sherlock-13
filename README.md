# 🕵️ Sherlock 13 — Projet Système d'exploitation

Ce projet implémente le jeu **Sherlock 13** en architecture **client-serveur TCP**, avec une interface graphique en **SDL2** pour les clients.

---

## 📁 Structure du projet

- `server.c` : code source du serveur
- `sh13.c` : code source du client
- `Makefile` : pour compiler facilement serveur et client.
- `*.png` : images des cartes et objets.
- `sans.ttf` : police utilisée pour les textes.

---

## 🧰 Pré-requis

Assurez-vous que les bibliothèques suivantes sont installées :

```bash
sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```

## 🛠️ Instructions

- Etape 1 : Cloner le repository 
```bash
git clone https://github.com/AyoubLADJICI/Sherlock-13.git
cd Sherlock-13/
```

- Etape 2 : Se rendre sur le dossier
```bash
cd Sherlock-13/ 
```

- Etape 3 : Compiler le projet
```bash
make
```
- Etape 4 : Executer le serveur (tous les numéros de ports entre 1025 et 65535 sont disponibles)
```bash
./server 26000
```

- Etape 5 : Executer les 4 clients dans 4 terminaux différents (Chaque client doit utiliser un port unique et un nom différent.)
```bash
./sh13 127.0.0.1 26000 127.0.0.1 2025 Ayoub
./sh13 127.0.0.1 26000 127.0.0.1 2026 Ronaldo
./sh13 127.0.0.1 26000 127.0.0.1 2027 Mbappe
./sh13 127.0.0.1 26000 127.0.0.1 2028 Zidane
```