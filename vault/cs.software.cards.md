---
id: q9bbyqgg0v6vcp2vdpg1qrr
title: Cards
desc: ''
updated: 1647298609505
created: 1647273204067
recall: header
---

## Kapitel 1: Einführung SWE

### 1.1 Begriffe

#### Erklären Sie die Begriffe Software und Engineering.

* **Software** ist ein Sammelbegriff für Programme und Daten (im Kontext der Vorlesung sind meistens Programme gemeint). Man kann auch näher am Begriff sagen, dass alle nicht technischen, nicht physikalischen (also nicht "harten") Bestandteile eines EDV-Systems gemeint sind
* **Engineering** bezeichnet die Entwicklung eines neuen Produkts. Dazu gehört die Analyse von Benutzeranforderungen, Entwurf des Produkts und das Erstellen, sowie das Testen des Produkts.

#### Was versteht man unter Software Engineering? (Kernfragen)

* Unter Software Engineering versteht man die Entwicklung qualitativ hochwertiger, großer Programmsysteme mit vielen Beteiligten unter Kosten- und Zeiteinschränkungen
* Dabei stellen sich folgende Kernfragen:
  * Qualität: Wie stellen wir sicher, dass das Softwaresystem tut, was es soll?
  * Beteiligte: Wie erreichen wir, dass das Softwareprodukt für die NutzerInnen nützlich ist?
  * Beteiligte: Wie erreichen wir, dass das Softwaresystem effizient zu entwickeln und insbesondere für neue EntwicklerInnen verständlich und langfristig weiterzuentwickeln ist?
  * Kosten/Zeit: Wie stellen wir sicher, dass das Softwaresystem mit den vorgegebenen Ressourcen (Geld, Technologie, Leute) im Zeit- und Kostenrahmen fertiggestellt wird?

### 1.2 Motivation

#### Warum ist Software wichtig?

* Wirtschaftlich: großer Bereich mit enormer Nachfrage, erhebliche Erhöhung der Produktionsmöglichkeiten und Effizienz auch in Unternehmen, die keine Software verkaufen
* Automatisierung (repetitiver) Prozesse
* Diverse Verwendung in allen Wissenschaftsbereichen
* Neue Möglichkeiten zum Wohle der Menschen: Hochkomplexe Berechnungen, sofortige und sichere Kommunikation, automatische Sicherheitsprüfungen in verschiedensten Bereichen, vielfältige Unterhaltungsmöglichkeiten, besserer Zugang zu Bildung, etc.
* Viele weitere Fortschritte denkbar, z.B. Medizin, Gentechnik, Mobilität, Sicherheit, etc.

#### Warum ist Software Entwicklung schwierig?

* SWE-Charakteristik variiert in Abhängigkeit von den Zielen (Aufwand, Anzahl d. Anweisungen, Speicherbedarf, Klarheit d. Programms, Klarheit d. Outputs)
  * Evtl. ist die zu entwickelnde Software relativ groß (typische APP: 3.000 - 20.000 Lines of Code)  
* Es kann viele Beteiligte geben (NutzerInnen, Entwicklungsteam)
  * Kommunikation zwischen den Beteiligten kann schwierig sein
    * Oft sind die Anforderungen nicht ausreichend bekannt (schlecht kommuniziert oder sogar noch gar nicht bedacht)
* Kosten- und Zeiteinschränkungen
  * schwierig abzuschätzen
  * Oft Überschreitungen
→ Viele Projekte werden abgebrochen

### 1.3 Überblick Software Engineering

#### Welche Faktoren können den Erfolg von Softwareentwicklungsprojekten beeinflussen?

Die Erfüllung von Zielen ist gleichzusetzen mit dem Erfolg des Projekts.
Ziele können sein die geplante Laufzeit einzuhalten, den Zweck des Projekts zu erfüllen, die Erweiterung des Know-hows, die Bereitstellung von Bausteinen für spätere Projekte sowie die Auslastung der MitarbeiterInnen.
Ebenso kann die Art der Teamorganisation (Einzelkämpfer, 2-Personen-Team, Anarchisches Team, etc.) sowie die Form der Sekundärorganisation (Funktionale Organisation, Projektorganisation, etc.) entscheidend sein.

Zusammengefasst sind die wichtigsten Faktoren also:
  a. Ressourcen, Zeitliche Vorgaben
  b. Organisation und Kommunikation untereinander und auch mit dem Kunden
  c. Effizienz 
  e. Dokumentation

#### Was sind die Hauptaufgabenbereiche des Software Engineering? Erklären Sie zu welchem Bereich das Änderungsmanagement gehört.

Die Hauptaufgabenbereiche von Software Engineering lassen sich auf vier "Säulen" aufteilen:

* Entwicklung: Softwarekontextgestaltung, Requirements Engineering, Architektur, Feinentwurf, Implementierung, Konfigurationsmanagement
* Qualitätsmanagement: Produkt, Prozess
* Evolution: Einführung, Betrieb, Weiterentwicklung, Wiederverwendung, Re-engineering, Änderungsmanagement
* Projektmanagement: Team, Kosten, Termine, Risiken, Auftragsgeber/-nehmer

Das Änderungsmanagement gehört in den Bereich der Evolution.

#### Erklären Sie den Unterschied zwischen Basissoftware, Middleware und Anwendungssoftware.

Basissoftware: Basis / Voraussetzung für den Einsatz eines Computers (z.B. OS). Abstraktion in Form von Softwarekomponenten ist nur möglich, wenn entsprechende Mechanismen auf Ebene der Basissoftware bereitgestellt werden.
Es müssen beispielsweise Events erzeugt oder Zeitgeber bereitgestellt werden.
Middleware: Middleware ist Software, die die Aufgabe hat allgemeinen Services und Funktionen für Anwendungen bereitzustellen. Häufige Aufgaben von Middleware sind Datenverwaltung, Anwendungsservices, Messaging, Authentifizierung sowie API-Management. Middleware ist somit eine Art "Bindeglied" zwischen Anwendungen, Usern und Daten.
Anwendungssoftware: Ein Anwendungssoftware ist das zur Anwendung gebrauchte Programm, eine Verarbeitungsvorschrift.  Anwendungssoftware ein Algorithmus der eingegebene Daten auswertet und mithilfe einer Ausgabefunkion (Drucker, Monitor, etc.) diese Daten interpretiert.

#### Was ist der Unterschied zwischen Individualsoftware und Standardsoftware?

Individualsoftware ist eine auf den Kunden maßgeschneiderte Softwarelösung die exakt auf seine Bedürfnisse bzw. das Unternehmen angepasst ist.
Sie ist auch sehr flexibel und kann bei Bedarf erweitert werden.
Standardsoftware hingegen ist ein bereits fertiges Produkt. 
Bei Individualsoftware kann die Software auf gegebene Arbeitsprozesse angepasst werden, bei Standardsoftware muss häufig der Arbeitsprozess auf die Software angepasst werden.
Da Individualsoftware häufig nur bei einem einzigen Kunden verwendet werden kann (gegenüber möglicherweise Millionen Kunden bei Standardsoftware) sind auch die Kosten häufig auch wesentlich höher als bei Standardsoftware.

### 1.4 Implementierung

#### Was sind wichtige Eigenschaften einer Programmiersprache?

* Strukturelemente zur Konstruktion modularer Programmeinheiten
* Trennung von Schnittstelle und Implementierung
* Mächtiges Typsystem mit strenger Typprüfung
* Syntax, die zur Lesbarkeit des Codes beiträgt
* Automatische Zeigerverwaltung
* Ausnahmebehandlung

#### Welche Faktoren können die Wahl der Programmiersprache beeinflussen?

* Sprachparadigma
* Welche technische Umgebung ist gegeben?
  * Legacy-System? Gibt es eine Vorgabe des Unternehmens?
* Welche Bibliotheken werden benötigt?
* Wie gut ist die Werkzeugunterstützung?
  * Compiler, Debugger, IDE, ...
* Welche Kenntnisse/Vorlieben besitzen die Programmierer?

#### Was ist der Unterschied zwischen prozeduralen und funktionalen Programmiersprachen, beschreiben Sie jeweils Vor- und Nachteile?

**prozedurale Programmiersprachen**

* Auch imperative Programmierung genannt
* Beispiele: Modula-2, Pascal, C, Fortran
* Ideen zum Modul-Konzept teilweise vorhanden
* Komfortable Definition von Datenstrukturen
* Trennung von Datenstruktur und Funktionen macht Wartbarkeit schwieriger
* Fazit:
  * Für kleinere und mittlere Systeme geeignet

**funktionalen Programmiersprachen**

* Beispiele: LISP, Haskell, ML, heute Clojure, Scala, XSLT
* Seiteneffektfrei und dadurch leicht verstehbar
* Sehr mächtiges Typsystem
* Patternmatching auf Argumenten
* Effiziente Definition von Datenstrukturen und Funktionen
  * data Tree = Leaf(Int) | Node(Tree,Int,Tree)
* Funktionen höherer Ordnung (Funktionen auf Funktionen anwendbar)
  * twice f x = f(f(x))
* Kompakte Formulierung
* Fazit:
  * Effektive und elegante Programmierung, aber langsamere Ausführungszeiten
  * Geeignet für schnelle Entwicklung, skaliert nicht für große Programmsysteme
  * Schwierigkeiten mit interaktiven Systemen (z.B. GUI) umzugehen

####  Was versteht man unter einer Klasse und was sind Klassenobjekte?
  
Unter einer **Klasse** versteht man in der objektorientierten Programmierung ein abstraktes Modell bzw. einen Bauplan für eine Reihe von ähnlichen Objekten. 

Ein **Klassenobjekt** stellt eine Instanz einer bestimmen Klasse dar. Es hat daher einen für sich reservierten Speicher, in dem seine genauen Eigenschaften (aus der Klassendefinition)
gespeichert werden. Zusammen mit den Methoden der Klasse, die auf diese Eigenschaften zugreifen können, bildet dies ein Klassenobjekt.
_Ein Klassenobjekt hat definiertes Verhalten, inneren Zustand und eindeutige Identität._

#### Was sind Vorteile der Objektorientierung?

* Kapselung: Interna eines Objekts werden unsichtbar nach außen gemacht bzw. gekapselt
* Vererbung: Methoden und Variablen können an Unterklassen vererbt werden, ermöglicht vereinfachte Anpassung und verbessert Wiederverwendbarkeit
* Höhere Wartbarkeit durch Abstraktion
* Wiederverwendbarkeit von Code
* Lesbarer als ein großer zusammenhängender Code
* Schnittstellen/ Interfaces: Mehrfachverwendung in unterschiedlichen Klassenhierarchien

#### Was versteht man bei OO Programmierung unter Polymorphie und welche Vorteile entstehen dadurch?

Unter **Polymorphie** versteht man in der objektorientierten Programmierung das Konzept, dass einer Variable unterschiedliche Datentypen zugeordnet werden können.
Polymorphie hängt eng mit Vererbung und Schnittstellen zusammen.

_Polymorphie (Vielgestaltigkeit) bezieht sich darauf, dass verschiedene Objekte bei Aufruf derselben Operation unterschiedliches Verhalten legen können. Man unterscheidet zwischen statischer und dynamischer Polymorphie. Statische Polymorphie zeigt sich in Form des Überladens von Methoden. Parameterlisten gleichnamiger Methoden können sich zum einen in den Datentypen und zum anderen in der Anzahl der Parameter unterscheiden. Bei dynamischer Polymorphie erfolgt Methodenauswahl zur Laufzeit. Dies ist der Fall wenn Kindklassen Methoden der Elternklasse überschreiben._

Im Falle von **Vererbung** können zum Beispiel Objekte der Klasse Hund und der Klasse Katze beide in einer Variable vom Datentyp Tier gespeichert werden, falls beide von der Klasse Tier erben. Methoden und Variablen, die zur Klasse Tier gehören können dann in den erbenden Objekten aufgerufen werden.

Im Falle von **Schnittstellen** (Interfaces) kann die Implementierung von Methoden auf implementierende Klassen aufgezwungen werden. Gibt es zum Beispiel eine Schnittstelle Edible, welche die Implementierung einer Methode Eat fordet, und zwei Klassen Apfel und Birne, welche diese Schnittstelle implementieren, so können sowohl Objekte der Klasse Apfel als auch Birne in einer Variable vom Typ Edible gespeichert werden. Diese kann jedoch dann nur die schnittstellenspezifischen Methoden aufrufen.

Vorteile:

* Der Code ist besser zu warten
* Der Code ist leichter zu erweitern
* Ermöglicht flexiblere Programmierung in den passenden Situationen

## Kapitel 2: Einführung SWE

### Welche Auftragsbeziehungen gibt es bei der Softwareentwicklung?

* Kund*in und Hersteller*in in derselben Organisation
  * Bezahlung und Kommunikation meist implizit, einfache Kommunikation
* Kund*in in anderer Firma als Hersteller*in
  * Kommunikation schwierig, wegen anderem Ort und Kultur. Meist durch formale Dokumenten geregelt
  * Bezahlung Vertraglich geregelt

### Welche Projekttypen gibt es?

Entwicklungsprojekt:
Softwareprodukt wird entwickelt, damit es später auf dem Markt angeboten werden kann.
Kund*in = Auftraggebende = Marketingabteilung
Finanzierung aus dem Entwicklungsbudget

EDV-Projekt:
Software für den eigenen Bedarf
hausintern (Hersteller*in und Kund*in in der gleichen Organisation)
Finanzierung mit „Papiergeld“
gemeinsame Vorgesetzte sollen Konflikte klären

Auftragsprojekt:
Hersteller*in entwickelt Software für externe*n Kund*in
klare Rollenverteilung auch mit explizitem Vertrag
Lieferungen mit Zahlungen verknüpft
bei kleiner Herstellerfirma oft als Basis für Entwiclungsprojekt

Systemprojekt:
Spezialfall eines Auftragprojekts
Kund*in bestellt komplexes System mit Software als Teil des Systems
weitere Hersteller neben Software-Entwickelnden
Einflussnahme der Kund*in auf die Software ist unterschiedlich stark

### Welche Eigenschaften haben Software-Projekte?

Softwareprojekte haben

* begrenzte Laufzeit,
* Erzeugende (ErzeugerInnen),
* Zweck,
* Abnehmende (Auftraggebende),
* Resultate/konkretes Ergebnis,
* Hilfsmittel,
* Organisation

### Software-Projekt: Welche Beteiligten gibt es? Welche Interessen haben diese?

Die drei Beteiligten im Projekt sind:

* Kund*in: setzt sich für Unternehmensziele ein
* Nutzer*in: Nutzt Software zur Arbeit
* Hersteller*in: Erstellt Software bzw. produziert im Projekt (auch Dienstleistungen)

### Welche Formen der Teamorganisation gibt es? Welche Vor-und Nachteile haben diese?

| Teamart  | Pro   | Contra   |
|-------------- | -------------- | -------------- |
| Ein-Personen-Team    | kein Kommunikationsaufwand     | keine Gesprächspartner (Kritik fehlt),  kein Dokumentationsdruck,Risiko des Ausfalls    |
| 2-Personen-Team    | Gespräch möglich, implizite QS, keine Katastrophe durch Ausfall einer Person, Wissen des Spezialisten kann auf zwei Köpfe verteilt werden     | Konfliktpotential bei Meinungsverschiedenheiten     |
| Anarchisches Team    | autonome Arbeitsweise jedes Mitgliedes, keine Hierarchien, dadurch auch kaum bürokratische Hemmnisse     | Keine Standards/Normen zur Qualitätssicherung, Unzuverlässige Resultate, Die Organisation insgesamt ist nicht lernfähig, d. h. Planung, Einführung neuer Methoden und Werkzeuge sind von der Laune der Mitarbeiter/innen abhängig     |
| Demokratisches Team    | gemeinsam verabredete Ziele, Fähigkeiten der Beteiligten werden optimal genutzt, Probleme werden frühzeitig erkannt und gemeinsam bekämpft     | Hoher Kommunikationsaufwand, Unter Umständen Paralyse (Dissens, Fraktionsbildung)     |
| Hierarchisches Team    | baumartige Organisationsstruktur, dadurch auch klare Zuständigkeiten, auf Mitarbeiterebene gute Ersetzbarkeit     | Langer Kommunikationsweg, Leitungsperson (Projektleiter/-manager) stellt ein hohes Risiko dar, Gruppenmitglieder sind kaum zu Kooperation motiviert     |
| Chief-Programmer-Team    | Die Gruppe kann außerordentlich effizient arbeiten     | Hohe Ansprüche an die Disziplin, vermutlich Gefahr, dass die/der Chief-Programmer „abhebt“, sich überschätzt     |

### Welche Vor-und Nachteile hat die Paarprogrammierung?

| Pro  | Contra   |
|-------------- | -------------- |
| bessere Fehlererkennung/ -behebung    | mehr Overhead (Gesamtentwicklungsaufwand)     |
| Abwägen zweier Meinungen führt zu der besseren Lösung: man kann voneinander lernen, man lernt zu kommunizieren    | ggf. schwierig, wenn sich die Beiden nicht gut verstehen     |
| ggf. schwierig, wenn sich die Beiden nicht gut verstehen    |      |
| Programme sind kürzer    |      |
| Die meisten Leute haben mehr Spaß zu zweit    |      |

### Was ist Konfigurationsmanagement? Welche Begriffe und Techniken sind wichtig?

"Konfigurationsmanagement (KM; englisch configuration management, CM) ist eine Managementdisziplin, die organisatorische und verhaltensmäßige Regeln auf den Lebenslauf eines Produkts und seiner Konfigurationseinheiten von Entwicklung über Herstellung und Betreuung bis hin zur Entsorgung anwendet."

Begriffe:

Release ist die Auslieferung eines Produktes (einer Konfiguration) in verschiedenen Ausbaustufen an einen Kunden.
Ein Release enthält typischerweise:
    Konfigurationsdateien (Auswahl der Konfiguration),
    Daten, die für einen erfolgreichen Betrieb nötig sind,
    Installationsprogramm,
    Systemhandbuch,
    Produktwerbung

Varianten/Produktlinien sind Auslieferungen verschiedener Produkte (mit unterschiedlichen Features) an verschiedene Kunden.

Version ist die Ausprägung einer Komponente zu einem bestimmten Zeitpunkt und hält den Entwicklungsstatus zu diesem fest.

Konfiguration ist eine konsistente Zusammenstellung von mehreren Softwarekomponenten von jeweils genau einer Version.

Baseline ist eine speziell ausgezeichnete Konfiguration, als Ausgangspunkt für Weiterentwicklung.

Techniken:

Gemeinsame Erstellung von Code in verschiedenen Versionen durch:
    Versionskontrolle,
    Koordination der Teamarbeit,
    Änderungskontrolle,

Gemeinsame Erstellung von Code in verschiedenen Konfigurationen durch:
    Konfigurationskontrolle,
    Konstruktion ausführbarer Programme (Build Management)

### Welche Codeprobleme kann man durch statische Analyse erkennen?

* Syntaxfehler (fehlender return statement)
* Typ(umwandlungs)fehler (String a = 5)
* Bereichsgrenzenfehler ("Out of Bound" bei Arrays)
* Nicht erreichbarer Code (>> dead code <<)
* Verwendung der einzelnen Programmelemente
* Ermittlung von nicht deklarierten Variablen

## Kapitel 3: Requirements Engineering (Kommunikation mit NutzerInnen)

### 3.1. Einführung Kommunikation mit KundInnen

#### Erklären Sie den Begriff Requirements Engineering.

**Requirements Engineering** (RE) umfasst die Erhebung, Spezifikation, Prüfung und Verwaltung der Anforderungen. Es ist ein kooperativer, inkrementeller Prozess mit Vision am Ende.
Das Ergebnis des RE ist eine Version, welche bestenfalls die Wünsche der KundInnen erfüllt und der Hersteller darin ein realisierbares Projekt sieht. Diese wird durch ein Dokument und evtl. auch durch einen Prototyp beschrieben.

Folgende drei Ziele werden verfolgt:

* Alle relevanten Anforderungen sind bekannt und wurden im erforderlichen Detaillierungsgrad verstanden.
* Involvierte Stakeholder haben eine ausreichende Übereinstimmung über die bekannten Anforderungen erzielt.
* Alle Anforderungen sind konform zu den Dokumentations-/Spezifikationsvorschriften spezifiziert worden.

#### Wieso ist eine gute Anforderungsbeschreibung im Projekt wichtig? Welche Probleme gibt es, wenn sie fehlt?

Wieso ist eine gute Anforderungsbeschreibung im Projekt wichtig?

* Abstimmung mit KundInnen und Marketing
* Abnahme des Projekts
* Klärung späterer Einwände, Regressionsansprüche
* Entwurf und Implementierung
* Benutzungshandbuch
* Testvorbereitung
* Wiederverwendbarkeit
* Spätere Re-Implementierung

Welche Probleme gibt es, wenn sie fehlt?

* Anforderungen ungeklärt, werden deshalb nicht erfüllt
* Es kann nicht gut entschieden werden, ob System richtig funktioniert (echte vs. vermeintliche Mängel)
* Fehlende Vorgabe für EntwicklerIn, deshalb werden eigene Erfahrungen und Erwartungen als Grundlage genommen
* Basis für Benutzungshandbuch fehlt, muss deshalb experimentell erfasst werden
* Systematischer Test nicht möglich
* vermeintliche Mängel nach längerem Gebrauch können nicht erkannt werden
* Wiederverwendung ist schwierig
* Aufwärtskompatibilität notwendig, wenn System ausgemustert und ersetzt wird

#### Was erschwert die Erstellung einer guten Anforderungsbeschreibung?

* Kommunikation ist schwierig
  a. „selbstverständliches“ wird nicht gesagt
  b. „hidden agenda“ (von KundIn und EntwicklerIn aus)
  c. NutzerIn hat Wünsche und Ziele, keine klaren Anforderungen
* Entwickler meinen zu wissen was gewünscht und benötigt wird
* Vernachlässigung der Ist-Analyse
* NutzerInnen stehen den Entwicklern nicht zur Verfügung
* KundInnen haben spät Änderungen

### 3.2. Nutzungsmodellierung

#### Was ist die Grundidee der aufgabenorientierten Anforderungsspezifikation (TORE)?

Die Idee ist eine Nutzungsbeschreibung zu haben, welche sowohl für Entwickler als auch für NutzerInnen verständlich ist. Bei der aufgabenorientierten Anforderungsspezifikation wird dies auf unterschiedlichen Abstraktionsebenen durchgeführt.

#### Erklären Sie die Beschreibungsebenen von TORE

Aufgabenebene:

  In der Aufgabenebene werden die Hauptnutzungsszenarien in denen die Nutzer die Software verwenden beschrieben.
  Eine Aufgabenbeschreibung ist eine abstrakte Zusammenfassung verschiedener Aspekte einer Aufgabe, welche in Aufgabeneinordnung (Ziele, Eingriffsmöglichkeiten durch Nutzer, Ursachen und Priorität) und Aufgabendurchführung (Durchführungsprofil (Häufigkeit, Kontinuität, Komplexität), Vorbedingung, Info-In, Info-Out und Ressourcen) unterteilt ist.
  Diese Daten werden durch Befragung der Nutzer, Untersuchung des Geschäftsprozesses oder durch Beobachtung erhoben.

Domänenebene:

  In der Domänenebene werden die Entitäten (also Dinge und Konzepte) die im Kontext der Aufgaben wichtig sind beschrieben, welche entweder durch ein Domänendatendiagramm (welches nur Klassen und Assoziationen modelliert) oder durch ein Glossar dargestellt werden.
  Dabei ist die Unterscheidung von Entitäten (Eigene Identität mit mehreren Attributen) und Attributen (veränderlicher Wert, der ohne Entität nicht sinnvoll ist) wichtig.

Interaktionsebene:

  In der Interaktionsebene wird die Schnittstelle zwischen Mensch und Maschine betrachtet (UI-Struktur).
  Ähnlich wie in der Aufgabenebene werden hier die Aufgaben des Systems beschrieben (Name, In-/Output, Beschr., Exceptions, Regeln, Qualitätsanforderungen, Pre-/Postconditions).
  UI-Strukturen abstrahieren vom konkreten Layout (GUI) und stellen die logische Sicht der Nutzerrinnen auf die Interaktionsstruktur dar, z.B. durch Workspaces, die zusammengehörige Systemfunktionen und Daten beschreiben.
  Systemfunktionen sind in diesem Fall Funktionen, die die Nutzer direkt von der GUI aus aufrufen können.

Systemebene: GUI (Benutzungsschnittstelle):

  In der Systemebene beschäftigt man sich mit dem konkreten Layout der Benutzersschnittstelle (GUI).
  Wichtige Anhaltspunkte sind
  * Law of proximity
  * Law of closure
  * Law of good continuation
  * Law of similarity

#### Welche Artefakte sind auf welcher Ebene zu erstellen? Welche Beschreibungsmethoden (Templates) werden dabei verwendet?

Aufgabenebene:

* Personabeschreibung durch: Name, biographic facts, knowledge and attitude with respect to task and technology, needs, frustrations, ideal features
  * Aufgabenbeschreibung durch:
    * Aufgabeneinordnung: Ziele, Eingriffsmöglichkeiten, Ursachen, Priorität
    * Aufgabendurchführung: Durchführungsprofil, Vorbedingung, Info-In, Info-Out, Ressourcen
* Aufgabenbeschreibung durch Task & Support:
  * Auflistung der Varianten der Aufgabe
    * Probleme dieser Varianten
    * Lösungsvorschläge für jeweilige Probleme mit relevanten Systemfunktionen

Domänenebene:

* Darstellung der Domänendaten durch Domänendatendiagram in Form eines Entity-Relation-Diagramms

Interaktionsebene:

* Beschreibung einer Systemfunktion durch: Name, Input, Output, Beschreibung, Ausnahmen, Regeln, Qualitätsanforderungen, Vorbedingungen, Nachbedingungen
* UI-Struktur Diagramm: Stellt Inhalt und Funktionen der Sichten sowie die Navigation zwischen diesen dar

Systemebene (GUI):

* Dokumentation der Sichten durch Mock-Ups: Skizzen des GUIs der jeweiligen Sicht

#### Insbesondere was ist der Unterschied zwischen Rolle und Persona? Aufgaben, Unteraufgaben und Systemfunktionen? UI-Struktur und UI-Prototype?

* Rolle und Persona?

  * Rolle ist eine abstrakte Zusammenfassung von Bedürfnissen, Interessen, Erwartungen, Verhalten und Verantwortlichkeiten, die charakteristisch ist für eine Menge von zukünftigen Systembenutzern.

  * Persona ist eine realitätsnahe Beschreibung einer fiktiven Person, die stellvertretend für eine Rolle steht.

* Aufgaben, Unteraufgaben und Systemfunktionen?
  * Aufgaben werden aus Nutzersicht formuliert. Sie umfassen eine größere Menge von Aktivitäten und erfordert die Bearbeitung unterschiedlicher Daten. Sie haben ein klares Ziel.
  * Unteraufgaben sind Teilziele einer solchen Aufgabe
  * Systemfunktionen sind Funktionen, die auf Systemseite erfüllt werden müssen: Sind Mittel zum Zweck für Unteraufgaben und Aufgaben
* UI-Struktur und UI-Prototype?
  * UI-Struktur: Stellt logische Sicht der NutzerInnen auf die Interaktionsstruktur dar (siehe Strukturdiagram)
  * UI-Prototyp: Bereits nutzbare Realisierung einer UI-Struktur, bereits mit GUI Details
  
#### Was ist bei der Erstellung von Systemfunktionen zusammen mit der UI-Struktur zu beachten?

Bei der Beschreibung von SF muss man überlegen welche Daten benötigt und wie diese benutzt werden. UI-Struktur ist eine logische Sicht auf wie die Nutzer interagieren, sie bündelt Daten und SF in Arbeitsbereiche. So erfolgt eine wechselseitige Beziehung zwischen SF und UI-Struktur, und daher müssen beide parallel entstehen.

#### Erklären Sie die Gestaltgesetze und ihre Anwendung bei der UI-Gestaltung

Die Gestaltgesetze werden bei der Darstellung von Daten und UI-Elementen benutzt, um Gruppierungen und Zusammenhänge einfacher zu erkennen.
Die Gestaltgesetze sind folgende: (Vorlesung 3 Seite 61-63)

a.  Law of proximity
      i. Nahe Elemente werden als zusammenhängend gesehen
      ii. für Elemente, die zusammen gehören (z.B. OK, Cancel)
b.  Law of Closure
      i. Elemente mit einem Rahmen werden als zusammenhängend gesehen
      ii. um Elemente zu Gruppieren (z.B. für ein Untermenü)
c.  Law of good continueation
      i. Elemente die einer Richtung folgen werden als Abfolge gesehen
      ii. Um z.B. UI Gruppen zu sortieren (z.B. Abarbeitung top to bottom)
d.  Law of similarity
      i. Ähnliche Elemente werden als zusammenhängend gesehen
      ii. z.B. Rote Buttons für negative und Grüne für positive Antworten
e.  Law of parallel movement
      i. Elemente, die sich in die gleiche Richtung bewegen, werden als Gruppe wahrgenommen

## 3.3. Dokumentenqualität

### Gute Dokumente sind im im SWE besonders wichtig, bei:

a. langlebigen Inhalten,
b. rechtlich relevanten Inhalten
c. komplexen Inhalten und/oder
d. Zugänglichkeit vieler Beteiligter.

### Ein besonders hoher Detailgrad ist insbesondere dann geboten, wenn:

a) ein hohes Risiko bei Auftreten von Fehlern aufgrund fehlender/missverständlicher Information besteht
b) eventuell beim Leser der Dokumentation aufkommende Fragen nur mit hohem Aufwand klärbar sind
c) Eine hohe Änderungswahrscheinlichkeit für die Software besteht

### Wie ist ein technisches Dokument typischerweise gegliedert?

Einleitung

1.1 Zweck 

  Von wem - wie - für wen wurde das Dokument erstellt?

  Wer soll es lesen? Warum? 

  Für wen ist es verbindlich? Wie?

1.2 Zusammenfassung

  Systemumfang und Stakeholder

1.3 Definitionen und Abkürzungen

  Begriffen und Abkürzungen (inkl. Glossar)

1.4 Referenzen, Standards und Vorschriften

  Liste der referenzierten Dokumente 

  (insbesondere Standards und Vorschriften)

1.5 Überblick

  Inhalt und Aufbau des Dokuments

2. – X. Kerninhalte

X+1. Zusammenfassung

X+2. Anhang

X+3. Index (Inkl. Inhaltsverzeichnis)
Was sind die Kriterien für gute Anforderungsdokumente bzw. Anforderungen? Geben Sie jeweils ein Beispiel.
Kriterien für ein Dokument (Nach ISO/IEC/IEEE 29148:2018)
• verständlich
• vollständig
   - Alle relevanten Anforderungen vollständig dokumentiert (auch Fehler und Ausnahmefälle)
   - Formale Vollständigkeit bzgl. Grafiken, Tabellen und Diagrammen, Quellen- und Abkürzungsverzeichnis)
• konsistent (keine Widersprüche, konsistente Terminologie)
• umsetzbar (= feasible)
   - im Zeit- und Kostenrahmen, ohne großes Risiko
• validierbar
   - Im Zeit- und Kostenrahmen überprüfbar, dass Bedürfnisse erfüllt

Kriterien für eine Anforderung (Nach ISO/IEC/IEEE 29148:2018)
• Verständlich für alle!
   • Insbesondere eindeutig, vollständig, einzigartig, standardkonform
• Verständlich für die NutzerInnen des Dokuments
   NutzerInnen der Anforderungen sind
   • Stakeholder:
      - Korrekt, notwendig, angemessen : Ist „Auftrag“ richtig wiedergegeben?
   • EntwicklerIn:
      - umsetzbar: Klare Vorgabe?
   • TesterIn:
      - prüfbar: Testfälle ableitbar?

Beispiele Anforderungen:
(1)
Schlecht: "Das System ermöglicht die Eingabe von Filmund Schauspielerbewertungen. Es werden dann die Gesamtbewertungen ermittelt."
Problem: Passivformulierung. Wer ermittelt? Das System oder der Aktor?
Besser: "Das System ermöglicht die Eingabe von Filmund Schauspielerbewertungen und ermittelt dann die Gesamtbewertung des Filmes."

(2)
Schlecht: "Die letzten 10 Filme und die Gesamtbewertungen sollen angezeigt werden."
Problem: Referenzen „letzte“ (zeitliche oder in Reihenfolge), „und Gesamtbewertungen“ (alle oder der letzten 10?), Passivformulierung (wer soll anzeigen?) Was bedeutet „soll“ (ist das optional)?
Besser: "Das System zeigt bei Wiederaufruf der Funktion Bewerten die 10 zuletzt bearbeiteten Filme und deren Gesamtbewertungen."

(3)
Schlecht: "Das System soll eine Warnung anzeigen, wenn ein Film 1 Jahr nicht ausgeliehen und mehrmals geändert wurde oder Daten fehlen."
Problem: „und/oder“-Schachtelung, „und“- Bedingungen gleichzeitig? Was bedeutet „soll“ (ist das optional)?
Besser: "Das System zeigt eine Relevanzwarnung an, wenn ein Film 1 Jahr nicht ausgeliehen wurde. Es zeigt eine Überarbeitungswarnung an, wenn ein Film mehrmals geändert wurde oder Daten bei ihm fehlen. 

(4)
Schlecht: "Das System soll mit der Esc-Taste die aktuelle Bearbeitung abbrechen.
Problem: „die aktuelle Bearbeitung“ ist zu generell. Gilt das wirklich für jede aktuelle Bearbeitung? Sollen dabei Zwischenstände gespeichert werden?
Besser: "Wird während der Dateneingabe die Esc-Taste gedrückt,…Wird während einer Systemberechnung …"
In jedem Fall holt das System vor einem Abbruch des aktuellen Vorgangs eine Bestätigung von der/dem BenutzerIn ein.
Was ist bei der Formulierung von Anforderungen zu beachten?
• Kurze Sätze und kurze Absätze (max. ca. 7 Sätze), da das menschliche Kurzzeitgedächtnis begrenzt ist
• Nur eine Aussage pro Satz formulieren: ‘und’ vermeiden, Verschachtelte logische Zusammenhänge vermeiden
   • Pseudokode oder Entscheidungstabellen verwenden
• Konsistente Terminologie: Jargon vermeiden, Abkürzungen sparsam verwenden, Wortwiederholungen sind erwünscht!
• Offene Punkte kennzeichnen: „TBD“, „ToDo“
• Generalität vermeiden: klare Referenzen, Wörter wie „alle“ vermeiden
• Verbindlichkeit klar formulieren: „Muss, kann, soll“ etc. mit Bedacht verwenden
• Aktiv formulieren: „Das System ….“

## 3.4. Usability

### Erklären Sie den Begriff Usability

"Das Ausmaß, in dem ein Produkt durch bestimmte NutzerInnen in einem bestimmten Nutzungskontext genutzt werden kann, um bestimmt Ziele effektiv, effizient und zufriedenstellend zu erreichen" (ISO 9241-110)

+ Effektivität         Welchen Teil der „Aufgabe“ unterstützt die Software?
                                -> Funktionalität, ...
+ Effizienz             Inwiefern wird der Zeitaufwand für die „Aufgabe“ durch die Software minimiert?
                               -> Performanz, Fehlertoleranz, Erlernbarkeit...
+ Zufriedenheit    Inwiefern werden die Bedürfnisse der NutzerInnen durch die Software befriedigt?
                               -> Attraktivität, Erwartungskonformität, ...

= Usability (Gebrauchstauglichkeit)

<!-- ### Erklären Sie die 7 Dialogprinzipien und geben Sie jeweils ein Beispiel für Ihre Einhaltung bzw. Nicht-Einhaltung.

Todo -->

