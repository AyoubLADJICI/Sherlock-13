#Variables
CC = gcc
CFLAGS = -I/usr/include/SDL2
SDL_FLAGS = -lSDL2_image -lSDL2_ttf -lSDL2 -lpthread
TARGETS = server sh13
SERVER_SRC = server.c
CLIENT_SRC = sh13.c
SERVER_OBJ = $(SERVER_SRC:.c=.o)
CLIENT_OBJ = $(CLIENT_SRC:.c=.o)

#Règle principale
all: $(TARGETS)

#Compilation du serveur
server: $(SERVER_OBJ)
	@echo "Compilation du serveur..."
	$(CC) $(CFLAGS) -o server $(SERVER_OBJ)
	@echo "Serveur compile avec succes."

#Compilation du client
sh13: $(CLIENT_OBJ)
	@echo "Compilation du client..."
	$(CC) $(CFLAGS) -o sh13 $(CLIENT_OBJ) $(SDL_FLAGS) 
	@echo "Client compile avec succes."

#Compilation des fichiers sources en objets
%.o: %.c
	@echo "Compilation de $<..."
	$(CC) $(CFLAGS) -c $< -o $@

#Nettoyage des fichiers objets et exécutables
clean:
	@echo "Nettoyage des fichiers objets..."
	rm -f $(SERVER_OBJ) $(CLIENT_OBJ)
	@echo "Nettoyage terminé."

fclean: clean
	@echo "Suppression des exécutables..."
	rm -f $(TARGETS)
	@echo "Suppression terminée."

#Recompilation complète
re: fclean all

#Aide
help:
	@echo "Commandes disponibles:"
	@echo "  make ou make all → Compile server.c et client.c"
	@echo "  make server      → Compile uniquement server.c"
	@echo "  make client      → Compile uniquement client.c"
	@echo "  make clean       → Supprime les fichiers objets (.o)"
	@echo "  make fclean      → Supprime les exécutables et les objets"
	@echo "  make re          → Nettoie tout (fclean) et recompile entièrement le projet (all)"
	@echo "  make help        → Affiche les commandes disponibles"