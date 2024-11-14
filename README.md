# SAE 501 - API Rest Laravel et Figma

## Description

Sujet : La création d'une application web d'éducation à la biodiversité des forêts vosgienne, la cible visée est le grand public. Cette application doit permettre à l'utilisateur de découvrir la faune et la flore des forêts vosgienne et apprendre à la protéger.

Nous avons décidé de créer une application simple à utiliser qui puisse servir à l'identification rapide des insectes. L'application, qui se nomme "Queti", permettra à l'utilisateur de trouver l'ordre d'un insecte au travers d'un questionnaire qui rappelle la structure d'une clé d'identification. Il sera également possible de parcourir un catalogue en sélectionnant l'ordre souhaité.

## Figma

Le [Figma](https://www.figma.com/design/6JCRUwlYyIyXHKno4Ci8wg/Queti?node-id=0-1&t=WF5q4Kaq2Wr7w9jb-1) est accessible par lien.

## API Rest

### Requête de connexion

#### Méthode POST  
```bash
http://quetiback.sc2zeep6040.universe.wf/api/register?name=XXX&email=XXX@gmail.com&password=XXX
```

#### Méthode POST
```bash
http://quetiback.sc2zeep6040.universe.wf/api/login?email=XXX@gmail.com&password=XXX
```

#### Méthode POST
```bash
http://quetiback.sc2zeep6040.universe.wf/api/logout
```

#### Méthode GET
```bash
http://quetiback.sc2zeep6040.universe.wf/api/me
```

### Requête du catalogue

