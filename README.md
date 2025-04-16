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
