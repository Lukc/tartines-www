---
title: Guide de contribution
lang: fr
...

Le guide de contribution est encore en cours de rédaction !

<!--

## 1. Cession de droits

Pour pouvoir remplir ses fonctions, les documents de la GBPL doivent pouvoir être réutilisables et modifiables par tous.

Le [libre accès]() au contenu est nécessaire pour permettre la propagation des connaissances et du Savoir auprès de tous et de tout les publics.

Les droits de modifications sont nécessaires pour pouvoir réutiliser, intégrer ou adapter du contenu pour différents types de formations ou pour les besoins d'autres types de structures.

Les *droits cédés* à la GBPL ne sont *pas* cédés de façon *exclusive*.
Les auteurs continuent à bénéficier de leurs droits et pourraient, par exemple, publier séparément et commercialement leurs documents.

## 2. Envoi des sources

**FIXME: Github**

## 3. (Option) Marquage des documents {#gbpl-yaml}

Les documents sans métadonnées ou impossibles à découper resteront dans la *liste d'attente* de la GBPL.
Pour quitter cette liste, un fichier décrivant le contenu du dépôt doit être ajouté à la racine.

```YAML
author:
- "Prénom *Nom*"
- "Prénom2 Particule *Nom2*"
- …
unit: "Unité d'Enseignement" # par exemple, "Génie Logiciel"
year: 2017
tags:
- "project management"
- "C"
documents:
- type: notes
  source: "cours_01.md"
  children:
  - type: exercise
    source: "ex/01.odt"
  - type: exercise
    source: "ex/02.docx"
	author: "Some Other Name"
  - type: exercise
    source: "ex/03.md"
- type: annales
  extractor: "grep '#^ ' wip_cc.md"
```

**FIXME: contrib guide**

- Cession de droits/contrat/license
- Métadonnées + Scripts
- Pull request?
- Découpages

-->


