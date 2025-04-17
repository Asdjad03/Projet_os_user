# Compile le client SH13

# Nom de l'exécutable
TARGET = sh13

# Fichier source
SRC = sh13.c

# Commande de compilation 
all:
	gcc $(SRC) -o $(TARGET) -I/usr/include/SDL2 -D_REENTRANT -lSDL2 -lSDL2_image -lSDL2_ttf -lpthread

# Nettoyage
clean:
	rm -f $(TARGET)
