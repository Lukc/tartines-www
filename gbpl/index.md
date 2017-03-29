---
title: Grande Bibliothèque Pédagogique Libre
no-title: true
lang: fr
...

<section id="screen-1" class="screen screenlike">

---

<!-- # breaks pandoc's sections calculations -->
<h1>**Grande Bibliothèque Pédagogique Libre** :</h1>

<div class="row">
<span class="fa fa-book"></span>

<i>« *Collection* de *ressources pédagogiques* en ligne et sous licence [Libre](), ayant pour public les *enseignants* et *étudiants* de toutes structures d'enseignement confondues. »</i>

</div>

---

</section>

<section id="public" class="row">

<section>
<h1>Pour les étudiants</h1>

La **GBPL** met à disposition du contenu utile pour préparer du matériel de *révision*, d'*exercice* ou de *découverte*.

Ce contenu est principalement disponible à travers les packs de *travail* des *amicales*.

</section>

<section>
<h1>Pour les enseignants</h1>

La **GBPL** met à disposition du matériel utile pour *donner cours* dans une *université*, une *école*, ou toute autre forme de *structure pédagogique*.
</section>

</section>

<section class="row">

## Lire & étudier

### Packs des amicales

<span class="fa fa-book fa-3x"/>

**FIXME: amicales + résumé**

**FIXME: *attendre les amicales* **

### Documents indépendants

<span class="fa fa-files-o fa-3x"/> 

**FIXME: lien vers index + explications**

## Générer des documents

**FIXME: rediriger vers une documentation plus complète et séparée**

**FIXME: expliquer le concept de sélection des sources et d’assemblage ?**

**FIXME: les intérêts de la réutilisation ?**

</section>

# Comment contribuer ?

La **GBPL** cherche à être un projet *ouvert*, auquel quiconque peut contribuer.

**FIXME: petites tâches (corrections/…), intro à la contribution open-source**

## 1. Cession de droits

**FIXME: expliquer les droits cédés, la cession non-exclusive, et les raisons pour lesquels ces droits doivent être cédés.**

## 2. Envoi des sources

**FIXME: Github**

## 3. (Option) Découpage des documents {#gbpl-yaml}

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

---

**FIXME: contrib guide**

- Cession de droits/contrat/license
- Métadonnées + Scripts
- Pull request?
- Découpages

---
