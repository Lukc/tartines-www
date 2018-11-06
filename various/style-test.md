---
title: Page de test
subtitle: Présentation de la feuille de style
date: 2017-03-21T21:00:00
numbersections: true
author:
- 'Ch. C. <span style="font-variant: small-caps;">Lukc</span>'
addressee: "À l'attention de la Guilde"
toc-title: Sommaire
abstract: |
	Cette page sert à présenter les différents éléments graphiques implémentés dans la feuille de style de Tartines.

	Cette feuille de style a été écrite pour des pages générées en HTML, mais des exports en LaTeX pourraient être mis en place dans le futur.
show-toc: true
lang: fr
...

# Paragraphes

<aside>
Des notes de marge sont disponibles à travers les balises \<aside\>.

De telles notes seront utilisées tout au long du document.

Ces notes sont intégrées au corps du document si la largeur du navigateur est trop faible.
</aside>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus id eros ut efficitur. Quisque eget sagittis arcu. Nulla rhoncus neque metus, sit amet sollicitudin neque eleifend et. Nunc venenatis mi dolor, nec bibendum justo mattis non. Integer gravida ex sit amet ligula semper malesuada. Donec convallis, lorem sit amet tempor rutrum, massa lacus fringilla urna, id elementum nisl mauris ut justo. Mauris egestas ultricies massa et viverra.

Vivamus tempus purus non faucibus sodales. Mauris faucibus metus elementum velit iaculis, quis commodo enim euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum eros sit amet mauris vestibulum, in egestas ex placerat. Maecenas ornare sodales lacus, sit amet elementum est semper.

## Emphase

Vivamus **tempus** purus non faucibus sodales.
Mauris *faucibus* metus elementum velit *iaculis*, quis commodo enim euismod.

## Liens

Lorem ipsum dolor sit amet, <a>consectetur</a> adipiscing elit.
Nullam elementum eros sit amet mauris vestibulum, in egestas ex placerat.
Maecenas ornare sodales lacus, <a>sit amet</a> elementum est <a>semper</a>.

# Listes

## Simples

<aside>
Les listes simples sont à préférer aux listes numérotées dans la plupart des cas.
</aside>

-
	Lorem ipsum dolor sit amet, consectetur adipiscing elit.

	Duis et interdum mi, ut placerat felis.
-
	Etiam finibus nisi eget sagittis gravida.

-
	Nunc ultricies tortor in turpis accumsan, at congue nisi fringilla.

	- Suspendisse sed nunc tempus, egestas ipsum at, tristique nisl.
	- Aliquam facilisis mi eget eros porta, sed elementum sapien facilisis.

## Numérotées

<aside>
Avant d'utiliser des listes numérotées, considérez utiliser des [sections](#sections) !

Alternativement, les [listes de définitions](#definitions) peuvent être sémantiquement plus adaptées.
</aside>

1.
	Sed a orci eu leo pretium eleifend.

2.
	Curabitur dictum lectus id nibh varius ultricies.

	1. Fusce lacinia justo et felis tincidunt sagittis.
	2. Nunc accumsan libero id ante varius, vitae aliquet lorem aliquet.
	3. Phasellus quis leo vulputate, rutrum leo sit amet, euismod dolor.

i.
	Sed sit amet nisl nec velit luctus maximus.

ii.
	Nunc eleifend sem vitae ullamcorper viverra.

	a. Vestibulum tincidunt tortor eu consectetur posuere.

## Définitions

<aside>
Les **listes de définitions** sont utiles pour rafraîchir la mémoire du lecteur sur des concepts peu communs ou introduire des idées plus exotiques, importantes mais uniquement tangentiellement connectées au sujet.

Ces définitions peuvent s'étendre sur plusieurs paragraphes et contenir du code ou d'autres éléments riches.
Chaque terme peut posséder plus d’une définition.
</aside>

Suspendisse

:	**Suspendisse** accumsan sollicitudin arcu, iaculis *facilisis* sem accumsan in. In id *magna* tellus.

:	*Curabitur* arcu nibh, suscipit ut risus sodales, eleifend commodo tellus. Ut malesuada tempor nulla, ut dignissim elit suscipit vitae.

Nunc *accumsan* libero

:	Nunc accumsan libero id ante varius, vitae aliquet lorem aliquet.

	a. Phasellus quis leo vulputate, rutrum leo sit amet, euismod dolor.
	b. Duis et interdum mi, ut placerat felis.

	> Lorem ipsum.

	Sed a orci eu leo pretium eleifend.

# Sections

## Niveau 2

### Niveau 3

#### Niveau 4

##### Niveau 5

<aside>
Les sections de niveau 4 ou moins ne sont plus affichées dans la table des matières.

Des sections aussi petites ne sont pas recommandées.
</aside>

\
\
\
\
\
\


# Code

<aside>
*pandoc* prend en charge la coloration syntaxique.
</aside>

```JSON
{
	"lorem": "ipsum",
	"dolor": [
		1, 2, 3
	]
}
```

```Lua
#!/usr/bin/env lua

if math.random(1,2) == 1 then
	print("Lucky.")
end
```

# `<figure>`

Lorem ipsum.

<figure>
<h1><a>E_NOT_SURE</a></h1>
<figcaption>Big, highlighted links are said to attract attention.</figcaption>
</figure>

Vivamus tempus purus non faucibus sodales.
Mauris faucibus metus elementum velit iaculis, quis commodo enim euismod.
Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Nullam elementum eros sit amet mauris vestibulum, in egestas ex placerat.
Maecenas ornare sodales lacus, sit amet elementum est semper.

<figure>
> ## 7.3 Name and image {-}
> 
> The name “Tartines” or Tartines' logo may be used in documentation or other promotional materials. Such uses must be voted by the Council.
> 
> ## 7.4 Intellectual property {-}
> 
> Everything published by Tartines or its Council must be distributed under an open-source license.

<figcaption><cite>Code of Tartines</cite></figcaption>
</figure>

Lorem ipsum.

# Citations

Du texte avant la citation.
Mais attention, la citation suit à la ligne suivante :

<aside>
Malheureusement, pandoc ne fournit pas de syntaxe pour la source des citations, qui doit en conséquence se noter en utilisant une balise HTML `<cite>`.

---

Le caractère utilisé pour représenter les blocs de citations change en fonction de la langue du document.

La langue du document se redéfinit avec un entête `lang`.
Par exemple, `lang: fr` pour le Français ou `lang: en` pour l'anglais.
</aside>

> The present document is a set of rules to be followed by Tartines' members and Council.
> 
> It is a reference that aims to bring structure to Tartines by guiding its members. It is meant to be used as well by outsiders needing to understand how Tartines works.
> 
> <cite>Code of Tartines</cite>

Du texte après la citation.

> Le Roi est mort, vive le Roi !

Encore du texte, cette fois après une *petite* citation.

Certaines citations peuvent se trouver dans du texte, <q>mais pas toujours</q>.

