# SAE 501 - API Rest Laravel et Figma

## Sommaire

1. [Description](#description)
2. [Figma](#figma)
3. [Requêtes API Rest](#api-rest)
- 3.1.[Connexion](#requêtes-connexion)
- 3.2 [Utilisateur](#requêtes-utilisateur)
- 3.3 [Catalogue](#requêtes-catalogue)

## Description

Sujet : La création d'une application web d'éducation à la biodiversité des forêts vosgienne, la cible visée est le grand public. Cette application doit permettre à l'utilisateur de découvrir la faune et la flore des forêts vosgienne et apprendre à la protéger.

Nous avons décidé de créer une application simple à utiliser qui puisse servir à l'identification rapide des insectes. L'application, qui se nomme "Queti", permettra à l'utilisateur de trouver l'ordre d'un insecte au travers d'un questionnaire qui rappelle la structure d'une clé d'identification. Il sera également possible de parcourir un catalogue en sélectionnant l'ordre souhaité.

# Figma

Le Figma est accessible par ce [lien](https://www.figma.com/design/6JCRUwlYyIyXHKno4Ci8wg/Queti?node-id=0-1&t=WF5q4Kaq2Wr7w9jb-1).

# API Rest

## Requêtes de connexion

### Méthode POST, pour s'enregistrer
L'utilisateur peut créer un compte grâce à la fonction register, en prenant en paramètres un nom de compte, un email et un mot de passe.

```
http://quetiback.sc2zeep6040.universe.wf/api/register?name=XXX&email=XXX@gmail.com&password=XXX
```
Note : *XXX* est à remplacer avec vos identifiants !

### Méthode POST, pour se connecter
Après la création du compte, il est possible de se connecter avec l'email et le mot de passe, il sera assigner un token qui permet plus d'actions.
L'utilisateur obtient un token qu'il faudra garder tout au long de sa session.

```
http://quetiback.sc2zeep6040.universe.wf/api/login?email=XXX@gmail.com&password=XXX
```
Note : *XXX* est à remplacer avec vos identifiants !

### Méthode POST, pour se déconnecter
Enfin, l'utilisateur peut se déconnecter, il est toujours possible de se reconnecter avec le même compte avec un autre token ou un autre compte.

```
http://quetiback.sc2zeep6040.universe.wf/api/logout
```
Note : avec Postman, n'oubliez pas de mettre dans les Headers les Keys Accept et Authorization avec leurs valeurs respectives, 'application/json' et 'Bearer' accompagné du token.

## Requêtes Utilisateur
Note : avec Postman, n'oubliez pas de mettre dans les Headers les Keys Accept et Authorization avec leurs valeurs respectives, 'application/json' et 'Bearer' accompagné du token.

### Méthode GET, données de l'utilisateur
L'utilisateur a accés à ses données liées au compte.
```
http://quetiback.sc2zeep6040.universe.wf/api/me
```

### Méthode POST, l'utilisateur met en favori un insecte
```
http://quetiback.sc2zeep6040.universe.wf/like?insect_id=2
```

### Méthode POST, l'utilisateur enlève un insecte de ses favoris

```
http://quetiback.sc2zeep6040.universe.wf/
```

### Méthode GET, montre les insectes favoris de l'utilisateur
```
http://quetiback.sc2zeep6040.universe.wf/likedInsects
```

## Requêtes Catalogue
Tips : Remplacer *Y* avec un chiffre entre 1 et 15 !
Tips : Remplacer *Z* avec un chiffre entre 1 et 44 !

### Méthode GET, affiche la liste de tous les ordres
```
http://quetiback.sc2zeep6040.universe.wf/api/ordres
```

#### Méthode GET, affiche les descriptions des familles dans un même ordre
```
http://quetiback.sc2zeep6040.universe.wf/api/infos?ordre_id=Y
```

### Méthode GET, affiche tous les insectes d'un ordre choisi par l'identifiant
```
http://quetiback.sc2zeep6040.universe.wf/api/triordres?ordre_id=Y
```

### Méthode GET, affiche la liste de tous les insectes
```
http://quetiback.sc2zeep6040.universe.wf/api/insects
```

#### Méthode GET, affiche les détails d'un insecte
```
http://quetiback.sc2zeep6040.universe.wf/api/insects/Z
```
