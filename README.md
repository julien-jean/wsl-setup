# wsl-setup

Une configuration de base pour débuter avec le WSL.

# Installation du WSL

Suivre la [doc dédiée à l'installation du WSL](https://docs.microsoft.com/fr-fr/learn/modules/get-started-with-windows-subsystem-for-linux/).

# Configuration du WSL

Clonez ce repo, puis

```shell
make configure
```

> Sous le capot, on utilise `ansible` pour provisionner toute une suite d'outils. En faisant cela, on garantit qu'un développeur peut simplement relancer la même commande pour installer de nouveaux outils/de nouvelles dépendances.

# FAQ

## Problème de permissions sur des fichiers montés sur le FS windows

Quand vous accédez au FS windows depuis le WSL, il est impossible pour le WSL de venir modifier les permissions des fichiers car le NTFS ne les prend pas en compte.

Si vous souhaitez pouvoir les modifier, créer un fichier dans `/etc/wsl.conf` avec le contenu suivant:

```
[automount]
options = "metadata"
```

Et redémarrez votre WSL
