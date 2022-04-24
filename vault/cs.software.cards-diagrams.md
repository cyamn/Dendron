---
id: nasp275fuc7g11t9y0p05dr
title: Cards Diagrams
desc: ''
updated: 1647513748024
created: 1647290621754
recall: header
---

## Domänendatendiagramm

![](/assets/images/2022-03-14-21-44-42.png)

## Nutzungsdiagramm

![](/assets/images/2022-03-14-21-46-41.png)

## UI-Strukturdiagramm

![](/assets/images/2022-03-14-21-47-18.png)

## Klassendiagramm

![](/assets/images/2022-03-14-21-54-18.png)

## Sequenzdiagramm

![](/assets/images/2022-03-14-22-00-50.png)

## Entwurfs- vs. Analysemodell

![](/assets/images/2022-03-14-22-01-57.png)

## Analyseklassen (OOAD)

A (blaue Käseten nur hilfe):
![](/assets/images/2022-03-14-22-21-15.png)

B:
![](/assets/images/2022-03-14-22-22-20.png)

## Zustandsdiagramm (Dialogmodell)

![](/assets/images/2022-03-14-22-15-52.png)

![](/assets/images/2022-03-15-11-32-46.png)

## Kontrollflussgraph

![](/assets/images/2022-03-14-22-19-05.png)

## Question Option Criteria (QOC)

![](/assets/images/2022-03-15-15-43-46.png)


Hier ist Platz für Fragen und ihre Antwort!

❔F: Was sind Interaktionsdaten?
A: ich denke z.B. Objekte im Sequenzdiagramm oder im Kommunikationsdiagramm

✔️F: Was ist vom "klausurrelevanten" Zühlke Vortrag relevant?
A: Das ist relevant fürs Leben aber eher nicht für Klausur.

✔️F: wie nennt man diese pfeile eigentlich konkret im Klassendiagramm, Beziehungen?
A: Die durchgezogenen Linien sind Assoziation (Komposition und Aggregation sind Spezialformen davon). Im Code heißt das, dass es Attribute in der Klasse gibt.
Beziehungen sind z.B. Aufrufbeziehungen und nicht durch Attribute im Code umgesetzt (eine Klasse nutzt eine andere, ohne sie als Attribut zu haben).

✔️F: Zu User-Task. Die Granularität war ja relativ grob in den Beispielen im Jira. Gibt es da eine Faustregel wie Fein das sein sollte?
A: An Vorlesung bzw. Beispiele anlehnen, in Klausur eher ergänzen.

✔️F: Wäre es ein Testschritt, wenn man sagt "Check that x y happens?"
A: Ja, es MUSS Testschritt sein für 1) nicht Ausführbarkeit (z.B. "Check that unlinking a tag is not possible because the list of linked tags is empty." Kann auch formuliert sein als "Try to unlink... => Select unlinking not possible"). Es kann (optional) Testschritt sein für 2) interessante Zwischenzustände (z.B. bei Testen von discard, dass vorher Datenänderung umgesetzt wurde) und 3) für interessante Endzustände.

✔️F: Wenn eine Systemfunktion dem Benutzer eine Warnmeldung zeigen soll, passt es auch in Exceptions?
A: Warnmeldungen müssen in Description der SF vorkommen. 
z.B. SF Unlink Tag from Performer:
    Precondition: The performer is linked with a tag.
    Exceptions:  (E1) The user discards the changes. (E2) The user cancels the unlinking.
    Description (nur zu Exceptions): The user needs to confirm the unlinking in a warn dialog. The user can cancel the unlinking.
    
z.B.: TCS: Test Unlink Tag From Performer With No Tags Not Possible
    Expected Exception: Unlinking a tag is not possible because the list of linked tags is empty                                  

✔️F: Kann man behaupten, dass Klassentests (VL 10, Folie 41) eine Sonderform vom Komponententests sind?
A: Ja, bei uns können Klassen als Komponenten angesehen werden.

!!!✔️F: Auf einigen Altklausuren/Probeklausuren wird behauptet, dass wir 5 Aufgabenbereiche des Software Engineering gesehen haben. Soweit ich weiß, haben wir allerdings nur 4 gesehen (siehe VL 1 Folie 26). Wie ist das zu verstehen?
A: Es gibt 4 Kernfragen, bitte sehr gut einprägen und auch überlegen, wie die Fragen durch Vorgehensmodelle (z.B. Wasserfall, agil) unterstützt werden.

!!!✔️F: Sind in Sequenzdiagrammen auch Operatoren zu benutzen, wie z.B. alt, opt, break, loop, …?
A: Ja, bitte gut anschauen und auch überlegen, wie man das in Code übersetzt und andersherum (also Code in Sequenzdiagramm). (Bitte überlegen: Wie würde z.B. for-Schleife und if-else-Anweisung in Sequenzdiagramm aussehen? Wie würde alt, opt, und loop aus Sequenzdiagramm in Code aussehen?)

✔️F: Wie wird in Sequenzdiagrammen der Aufruf einer inneren Klasse dargestellt (kam in einer Altklausur/Probeklausur vor) bzw. ist das für uns überhaupt relevant? 
A: Aufruf von inneren Klassen ist bei uns nicht relevant, aber prinzipiell sind Sequenzdiagramme und ihre Übersetzung in Code (und andersherum) SEHR RELEVANT.

✔️F: Angenommen, wir müssen aus einem Code-Abschnitt ein Sequenzdiagramm ergänzen, wie EXAKT müssen die Bezeichnungen von Methodenaufrufen und übergebenen Argumenten etc. sein? 
A: In der Klausur sind normalerweise kleinere Teile eines Sequenzdiagramms zu ergänzen und kein komplettes Diagramm zu zeichnen. Diese kleinen Teilen müssen dann aber den gegebenen Code richtig modellieren.

✔️F: Bei den Aufgabenbereichen des SWE existiert bei Evolution der Unterpunkt Wiederverwendung, was ist damit gemeint?
A: es geht um "reuse" von z.B. Code, Anforderungen, damit "das Rad nicht neuerfunden werden muss". Beispiel: Wiederverwendung von Movie-/Performer-Code bei Umsetzung von Tagging

✔️F: Ist es richtig, dass bei dem erweiterten Analyseklassendiagramm ein "+" für jede Variable/Methode hinzugefügt wird, und dieses nicht wie sonst "public" bedeutet?
A: Die Aufzählung der Attribute und Methoden im 2. Analyseklassendiagramm hat noch nicht unbedingt mit Sichtbarkeit im Entwurfsklassendiagramm zu tun. Für Attribute ist es dennoch gut "-" zu verwenden und für Methoden/Operationen "+".


❔F: Was ermöglicht den Zustandsübergänge also klar Ereignisse, aber gibt es auch andere Möglichkeiten?
A: Mein Bildschirm kann sich z.B. nach 10 min ohne Bildänderung automatisch ausschalten.
Frage: Dazu muss dann aber 10 min als Zähler im Zustand implementiert sein also inkrementiell erhöht, oder?
A: Uns würde ein Pfeil über dem "10 min Inaktivität" steht reichen (ist dann irgendwo auch ein "Ereignis")
Frage: Also kann es nur durch Ereignisse zu Zustandsübergänge kommen?
A: Bei unseren Zustandsübergangsgraphen reicht es alle Übergänge als Ereignis darzustellen

❔F: Ist der Gebrauch eines Entscheidungsknoten in der Klausur nötig?

✔️F: Was sind Rollen?
A: Eine Rolle umfasst bestimmte Aufgabenbereiche/Verantwortlichkeiten bei der Sofware-Entwicklung. Rollen sind z.B. Anforderungsingenieur, Entwickler (Programmierer), Tester, DevOps-Manager, Rationale-Manager ... Eine Person kann auch mehrere Rollen innehaben (also z.B. sowohl Entwickler als auch Tester sein).
Rollen werden auch auf Anforderungsebene für NutzerInnen verwendet: z.B. Arzt/Ärztin ist auch eine Rolle.
"Kunde/Kundin" würde ich eher als "Stakeholder " bezeichnen, nicht als Rolle, da Aufgabe nicht klar ist.
*F: In der Musterlösung zu den Wiederholungsfragen steht, dass man unter Rolle versteht, dass es eine Menge von Merkmale, Interesse, Needs usw ist, die den Benutzern der zu entwickelenden App entsprechen. (?)
A: Ja, stimmt, das ist auf Anforderungsebene.

✔️F: Was sind/wie funktionieren Factory Methoden?
A: Bsp. siehe DataMasterFragment.newPerformerFragmentInstance im MM.
statt eines Konstruktors hat die Superklasse eine statische methode, welche ein Objekt dieser Klasse zurückgibt

!!!✔️F: Äquivalenzklassen: Wie stellt man fest ob man die minimale Testfallmenge erreicht hat? Gehören dort auch UEKs und UAKs dazu?
A: zur mimimalen Testfallmänge gehören nur gültige Äquivalenzklassen, also nicht UEK und UAK  

(F: aber dann wurde es in der VL anders gemacht?)

✔️F: Werden bei Systemtests „Cancel“ und „Discard“ als ungültige oder gültige Äquivalenzklassen angesehen?
A: „Cancel“ und „Discard“ entsprechen ungültigen Äquivalenzklassen. Laut der Checkliste für Systemtestfälle führen Exceptions in Systemfunktionen zu ungültigen Ausgabeäquivalenzklassen (UAK), deswegen sind die Ausgabeäquivalenzklassen zu discard und cancel ungültig. Testfälle zu speichern gehören zu gültigen Ausgabeäquivalenzklassen (GAK).

✔️F: Ist Inspektion Validierung oder Verifikation?
A: Das kommt darauf an, wer die Inspektion durchführt. Im Blockprojekt war es eher Verifikation, weil die korrekte Umsetzung der Anforderungen geprüft wurde. Wenn einE KundIn die Inspektion durchführt, ist es eher Validierung, da er/sie prüft, ob die "richtigen" Anforderungen umgesetzt wurden.

✔️F: Muss man Interaktionsdatendiagramme und Nutzungsdiagramme verstehen bzw. anwenden können?
A: Nutzungsdiagramme nicht. Sequenzdiagramme aber AUF JEDEN FALL.

✔️F: Bei den Interaktionsdiagrammarten ist für die Klausur nur das Sequenzdiagramm nötig, oder? 
A: Ja, nur Sequenzdiagramm (für 1. Klausur am 18.3., später kann sich das ändern).

✔️F: Muss man Objekte im Sequenzdiagramm unterstreichen?
A: Ja, Objekte müssen unterstrichen sein.

✔️F: Ist Grey-Box-Testing relevant für die Klausur?
A: Eher nicht, white box Test und Kontrollflussgraphen können aber SEHR relevant sein.