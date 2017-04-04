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

## Lire & étudier {#study}

### Packs des amicales

<span class="fa fa-book fa-3x float-icon"/>

Les documents les plus utiles et les plus complets pour étudier sont sans aucun doute les *packs de travail* faits par les amicales à partir du contenu de la GBPL.
Ces packs sont des assemblages de documents de la GBPL, sélectionnés pour leur pertinence et leur qualité.

Ils sont disponibles **\<FIXME\> *\<location\>* **

### Documents indépendants

<span class="fa fa-files-o fa-3x float-icon"/> 

Certains documents dans la GBPL sont d'*assez bonne qualité* pour être utilisés en tant que tels, sans avoir à être fusionnés ou intégrés dans un ensemble plus grands.
Ces documents n'ont pas ou peu été édités par les associations étudiantes.

La GBPL stocke une liste de ces documents **\<FIXME\> *\<location\>* **.

## Générer des documents {#export}

**FIXME: rediriger vers une documentation plus complète et séparée**

**FIXME: expliquer le concept de sélection des sources et d'assemblage ?**

**FIXME: les intérêts de la réutilisation ?**

</section>

# Comment contribuer ? {#contribute}

La **GBPL** cherche à être un projet *ouvert*, auquel quiconque peut contribuer.
Il existe de nombreuses façons de contribuer à la GBPL, et toutes n'incluent pas la création de documents.

Qu'il sagisse d'ajouter des documents, de corriger des fautes de frappe, de mettre à jour les outils logiciels ou même de créer des packs de travail à partir des données de la GBPL, toute forme de contribution sera acceptée à sa juste valeur.
Une liste de tâches est disponible [sur Github](https://github.com/Lukc/GBPL/issues).

La contribution de *documents* se fait en trois étapes :

  1. Une *cession de droits*, qui sert à s'assurer que la GBPL pourra utiliser les documents fournis d'un point de vue légal.
  2. Un *envoi des sources*, qui sert à fournir les documents sous une forme techniquement exploitable.
  3. Un *marquage des documents*, qui sert à les intégrer à la Bibliothèque et à permettre des recherches et des tris parmis ces derniers.

Chaque étape est expliquée plus en détail dans les sections suivantes.

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

---

**FIXME: contrib guide**

- Cession de droits/contrat/license
- Métadonnées + Scripts
- Pull request?
- Découpages

---

# Foire aux questions {#faq}

**FIXME: en attente de la liste de questions demandée aux partenaires**

