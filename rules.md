---
title: Code of Tartines
show-toc: true
numbersections: true
version: "0.0.1"
...

# Abstract

The present document is a set of rules to be followed by Tartines’ members and [Council].

It is a reference that aims to bring structure to Tartines by guiding its members.
It is meant to be used as well by outsiders needing to understand how Tartines works.

The present document is still experimental and very much a work in progress, something that *may* be named a “beta” in the software industry.
It is very likely to change in the next few weeks.
Version updates have not started either, because the document has not been [approved](#votes).

The [Council] *may* decide at any time to [vote](#votes) the [edition](#updates) of this document, updating its [version number](#version) as required.

## Version

On update of this document, including for trivial modifications, the version number *must* be updated.
Such version changes *must* be compliant with [Semantic Versioning 2.0](http://semver.org) or any newer version.

Specifically, the following rules *must* be applied:

  - if new rules are added, if rules are removed or if existing rules are edited, the major version number *must* be increased;
  - if new rules are added without requiring the edition of previous rules and without altering their behavior, the minor version number *must* be increased;
  - if only minor modifications are applied, the patch version number *must* be increased.

## RFC 2119

The key words “*must*”, “*must not*”, “*required*”, “*shall*”, “*shall not*”, “*should*”, “*should not*”, “*recommended*”,  “*may*”, and “*optional*” in this document are to be interpreted as described in [RFC 2119](https://tools.ietf.org/html/rfc2119.html).

# Objectives

Tartines’ objectives *must* be decided during a [Congress](#congress).
They remain valid and *must not* be changed until the next Congress.

# Membership

## Basic membership

The [Council] *may* approve one’s request to become a member of Tartines.

Upon doing so, the new member will be named **knight**, **squire** or **scribe**.

## Council

The Council is the group of members who possess voting rights within Tartines.

Candidatures to become a member of the Council *must* be brought directly to the Council.
The inclusion of new members in the Council *must* be [voted](#votes).

Members of the Council *must* be equally great people and *must* work together towards the greater good of Tartines or of the world.

The Council *may* also be named the “Grand Council”.

# Meetings

## World Domination Meetings

World Domination Meetings are weekly meetings.
They occur on Monday at 21:00, Paris time on the [Council]’s chatroom.

They *should* occur over Jabber to avoid having members of the Council unable to participate.

They *may* be skipped the week after a [Congress].

## Congress

From time to time, Tartines summons a Congress during which its [members](#basic-membership) *may* meet in real life.
The dates, location and duration *must* decided by [vote](#votes).
Each Congress usually lasts two weekend days, but this *may* change if the Council finds it more practical.

The planning and events to happen during the Congress *may* be listed beforehand or *may* be improvised while the Congress happens.
Hardware, equipment or other resources *may* be provided by Tartines’ members during a Congress.

## Agendas

A meeting’s agenda *must* be editable by all [Council] members before the meeting occurs.

## Proceedings

Every meeting’s proceedings *must* be stored and archived for [eternity](#dissolution).

A meeting’s proceedings *should* be published to allow interested parties that missed the meeting to know what decisions took place.
As [vote results](#publication-of-results) *may* be published in the proceedings, not publishing the proceedings would mean the results of the votes would have to published separately.

# Votes

## Procedure

The [Council] *may* decide to open a vote for any particular point on a meeting’s agenda.
Votes *should* only be opened during the meeting in which they are discussed.
If such an opportunity has been missed, it *may* be created again by adding that same point to the next meeting’s agenda.

Opening a vote outside of a meeting could lead to members of the Council not being informed about it, potentially being notified too late to be able to vote meaningfully.

Once a vote is opened, members of the Council *may* start voting “in favor”, “blank” or “against” the motion.
The vote *must* remain open for 7 days unless an [exceptional derogation](#exceptional-derogations) is accorded.

After the 7 days delay or an exceptional derogation, the motion *must* be approved or refused based on the following rules:

  - if someone votes against the motion, the motion is refused;
  - if no-one votes in favor of the motion, the motion is refused;
  - if none of those cases happen, the motion is accepted by the Council.

Special mention *may* be made if the voters are unanimously in favor of the motion.
Voters *may* justify their votes, and that justification *must*, if requested, be noted in the meeting’s proceedings.

One *must* be a member of the Council in order to vote.

## Privacy

Each voter’s vote *should not* be private.

Voting privately is very impractical and difficult to guarantee over the network, leading at the very least to technical issues, and possibly to more philosophical issues relating to trust and impartiality.

If a private vote is actually requested for any reason, the [Council]’s members will decide how to receive and process the votes.
During such a vote, asymmetric cryptographic keys *should* be used and the results *must* be processed automatically by a robot, script or other piece of software to make sure no-one known whose vote is whose.

## Publication of results

The results of the votes *must* be publicly accessible.

Those results *should* be noted in the proceedings of the meeting in which they occurred unless they occurred outside of a meeting.
Publishing them separately adds work and provides no additional value.
It also makes it more difficult to find them due to their presence being expected in the proceedings.

## Exceptional derogations

When time is essential, the Council *may* decide to accelerate a decision by additionally voting its immediate application.
Such a vote is validated as soon as all Council members have voiced their opinion.

## Voting rights

Voting rights are granted to all members of the Council as soon as they are officially named as such.
Those voting rights *must not* be used to alter past votes, not even those that happened during the same meeting as the new member was named.

# Property

## Hardware

Tartines’ hardware is possessed by the members of the Council.

The Council’s members *may* decide to give additional hardware or to take it back at any time depending on Tartines’ needs.
If hardware or other goods are to be obtained by Tartines, the Council *must* decide which of its members will obtain them.

## Finances

Tartines’, as a group, does not possess the ability to own money.

If the Council decides monetary resources are required, its members *must* decide who will pay what.
If monetary resources are to be obtained by Tartines, the Council *must* decide which of its members will obtain them.

## Name and image

The name “Tartines” or Tartines’ logo *may* be used in documentation or other promotional materials.
Such uses *must* be [voted](#votes) by the Council.

## Intellectual property

Everything published by Tartines or its [Council] *must* be distributed under an open-source license.

# Dissolution

Tartines *must not* dissolve. It is simply not an option, and such an event has no reason to happen in the foreseeable future.

# Annex

## Updates

The present code *may* be modified by the Council in the future.

Any major modifications *must* happen after a vote of the Council.
Any modification that affects the existing rules of Tartines or adds or removes one or more rules *must* be considered a major modification.
Any modification that is not considered trivial *must* be considered a major modification.

The following kinds of modifications are considered trivial and *may* be made by the Council without vote:

  - stylesheet edition;
  - grammatical corrections;
  - translation corrections;
  - adding missing anchors;
  - adding external references.

