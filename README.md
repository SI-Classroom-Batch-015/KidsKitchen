![KidsKitchen Logo](/images/Kids%20Logo.jpg "KidsKitchen Logo")
![2024](<https://img.shields.io/badge/2024-white?style=flat>)
![Xcode](<https://img.shields.io/badge/Xcode-blue?style=flat&logo=xcode&logoColor=white>)
![iOS 17.0](<https://img.shields.io/badge/iOS-17.0-blue?style=flat&logo=apple&logoColor=white>)
![Swift](<https://img.shields.io/badge/swift-orange?style=flat&logo=swift&logoColor=white>)
![SwiftUI](<https://img.shields.io/badge/SwiftUI-blue?style=flat&logo=swift&logoColor=white>)
![MVVM](<https://img.shields.io/badge/MVVM-blue?style=flat>)

---
# KidsKitchen
Der Gedanke für die App **KidsKitchen** ist mir im Gespräch mit meiner Nichte gekommen. Sie möchte gerne kochen lernen und hat mich gefragt, ob ich eine App kenne, mit der sie das lernen kann. Auf der Suche nach einer App, in der Kinder kochen lernen, bin ich leider nicht fündig geworden.
Bei der Überlegung selbst eine App zu schreiben, ist mir aufgefallen, wie wenig ich eigentlich selbst über das Thema Ernährung weiß. Daraus resultierend, beschäftige ich mich jetzt auch selbst ein wenig mehr mit dem Thema Ernährung.

---

![Sesamstraße](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Sesamstrasse_Logo.svg/1920px-Sesamstrasse_Logo.svg.png)
## Wer? Wie? Was?
Das Projekt **KidsKitchen** im groben Zusammengefasst.

---
### Wer?
- Für wen ist das Projekt interessant
- Wer bin ich ?

---
#### Für wen ist das interssant:
Hiermit möchte ich potenzielle Arbeit- & Auftraggeber auf mich und meine Art und Weise zu Programmieren aufmerksam machen.
Des weiteren darf dieser Code gerne als inspiration genutzt werden, da ich nach Möglichkeit, aktuelle Technologien, grade im Bereich von Animationen nutzen möchte.
Auch möchte ich grade Kinder & Jugendlich dazu animieren, sich bewusster mit dem Thema Nahrung auseinander zu setzen ohne dabei voreingenommen, gegenüber einer dieser Ernährungsformen zu sein.

---
#### Zu meiner Person 
Ich bin Joscha (38) aus Berlin und befinde mich zur Zeit (September '24) in einer Weiterbildung zum App Entwickler am [Syntax Institut](https://www.syntax-institut.de) in Berlin. 
Ich komme aus der Gastronomie, in der ich knapp 20 Jahre tätig gewesen bin. In den letzten 8-10 Monaten meiner Gastronomie Karriere, sind mir immer mehr Dinge aufgefallen, die ich gerne automatisiert hätte und so bin ich beim Syntax Institut gelandet.
Diesen Schritt bereue ich zu keinem Zeitpunkt. Im Programmieren von Apps habe ich meine Passion gefunden und auch das möchte ich mit dieser App zum Ausdruck bringen.

Mehr zu meiner Person gibt es auf [LinkedIn]()

---
### Wie?
In der ersten Phase werde ich mich den Anforderungen entsprechend mit folgendem Auseinandersetzen:

| Theme | Anwendung im Detail |
| --------------| --------------|
| [MVVM](https://de.wikipedia.org/wiki/Model_View_ViewModel) | Als DesignPattern verwende ich Model View ViewModel. Auf diese Weise lassen sich meine Daten, von der Funktionälität und den angezeigten Screens trennen. |
| SwiftData[^2] | Verwende ich in diesem zusammenhang zum Speichern der Daten. Dies ist Apples aktuelle Technologie, welche sich auch über CloudKit verbinden lässt, um so zwischen allen Geräten zu Synchronisieren |
| NavigationStack & -Link | Um vom SignIn zum HomeScreen zu kommen |
| ForEach | Benutze ich für die MealList. Es gibt noch weitere Anwendungsbereich _z.Bsp. bei den Ernährungsformen_|
| Sheet & List | Verwende ich für das UserProfile |

[^2]: In den Beiträgen 👉 [Meet SwiftData](https://developer.apple.com/wwdc23/10187) & 👉 [Migrate to SwiftData](https://developer.apple.com/wwdc23/10189) kannst du mehr darüber erfahren. Beide Beiträge sind von der WWDC23.

---
#### **Anforderungen**
![Anforderungen Abschlussprojekt Modul 4.jpg](/images/Anforderungen%20Abschlussprojekt%20Modul%204.jpg "Abschlussprojekt Modul 4.jpg")
Dies sind die Anforderungen an mein Abschluss Projekt. 

---
### Was?
Dies ist das Abschlussprojekt im 4. und letzten Modul meiner Weiterbildung zum App Entwickler am [Syntax Institut](https://www.syntax-institut.de) in Berlin, dem **iOS Modul**. 
Es handelt sich hierbei um eine **App für Kinder**. Mit dieser App dürfen Kinder spielerisch lernen, wie man kocht.
Auch die Eltern dürfen dabei nicht zu kurz kommen und so können sie sich den richtigen Umgang mit Kindern und essen, zusammen mit ihren Kindern aneignen.

---
> **8. September 2024:** Auf meiner Suche, nach geeigneten Websites, bin ich unter anderem auf die folgenden Websites gestoßen:

#### Rezepte & Wissen

---
##### Kinder
[Familienküche](https://familienkueche.de/rezepte/)
> Reich an Wissen für das Kochen mit Kindern.

[Geolino - Rezepte für Kinder](https://www.geo.de/geolino/kinderrezepte/)
> Tolle Website für Kinder. Großer Wissenschatz

[Gaumenfreundin](https://www.gaumenfreundin.de)
> Auch eine super Website für Kinder
> hier gefällt mir auch sehr, das es verschiedene Ernährungstypen gibt und diese sehr schön Erklärt sind.
> der weitreichendenWissenschatz ist beieindruckend

---
##### Keto
[Koch Keto](https://kochketo.de/keto-rezepte/)
> sehr viel Wissen, bezüglich Ketogener Ernährumg.
> hat einen Eingebauten Rechner.
> jedoch sind leider immer Affiliate Links zu weiterführenden Seiten, die man nicht vorher einsehen kann.
> auch gibt es keinen Preisvergleich oder die Möglichkeit auf Bio Produkte oder die Links funktionieren garnicht.

---
##### Nährwerte
[Nähwert Rechner](https://www.naehrwertrechner.de)
> Beim überfliegen, bieten sich hier beeindruckende Möglichkeiten.

---
## Umsetzung 
Die Umsetzung trennen ich in verschiedene Phasen & Bereiche. Möglicherweise gehört zu einer der Phasen auch dazu ein Backend zu bauen.
Wie dies geschehen soll, erfährst du weiter unten im Bereich Die Umsetzung im Detail

---
### Die ersten drei Phasen
| Phase | Zielsetzung |
| ---| ---|
| Phase 1 | In der ersten Phase geht es darum die Hauptfunktionalität der App sicherzustellen. Hierzu gehören: 	- das einloggen eines Users		- das einzeigen von Meals in einer Liste 	-  das Anzeigen eines Meals in der Detail Ansicht. |
| Phase 2 | In Phase zwei kommen weitere wichtige Funktionaliätäten hinzu: 	- das Auswählen von verschiedenen Ernährungsformen 	- das Auswählen verschiedener Gericht Typen 	- diese Dinge dann auch im Userprofil speichern |
| Phase 3 | In Phase drei geht es darum ein OnBoarding mit wichtigen Fakten bezüglich des Kochens mit Kindern _etc ..._. Im Zuge dessen lassen sich die Screens um ein Quiz erweitern, _je nach Arbeitsaufwand auch erst in einer späteren Phase |

---
### In weiteren Phasen einbauen bzw anbinden
- Backend bauen
- Nährwertrechner
- Quiz erweitern
- Wissen erweitern
- Gesundheit und Nahrung mit einbringen
- Fitness Daten mit einbinden
- Ernährungstypen im Detail beleuchten
- Wochenpläne erstellen
- Saison abhängiges kochen
- _… weitere folgen..._

---
## Die Umsetzung im Detail
### Phase 1 & 2 || MainApp Funktionen
##### Die App soll Funktionieren
Damit ich das Wasserfall Prinzip beim Programmieren vermeide, unterteile ich den Bau der App in verschiedene Phasen. In **Phase 1** liegt mein Hauptfokus darauf, die App zum laufen zu bringen und die Hauptanforderungen zu erfüllen. Dies beinhaltet unter anderem:
* die Wahl des richtigen Designs bei den Screens:
    - Welcome
    - SignIn / SignUp
    - Home / RandomMealList
    - UserProfile
    - MealDetail
* das Anzeige aller Daten, im richtigen Format sicherzustellen:
    - den korrekten Umgang mit der Api sicherstellen
    - mindestens ein Repository bauen
    - ein MealViewModel & ein UserViewModel bauen

---
#### Welcome
Hier wird überprüft, ob es schon ob es einen angemeldeten User gibt. Des weiteren werden hier relevanten Daten von einer **_API_** geladen.  
Die Wartezeit wird mit einer Animation des Logos überbrückt.

---
#### SignIn
Der Screen wird in einen **_NavigationStack_** gebettet werden. Infolge dessen kann ich mit einem **_NavigationLink_** Vertical Navigieren.   
- Für die Sicherheit der Daten bei diesem Prozess, gibt es die Überlegung, den User zu fragen, ob er auch ein Android Gerät besitzt und wenn ja, ob die Daten zwischen den Geräten Synchronisiert werden sollen. Sollte auch dies zutreffen, kann der User sich über Firebase anmelden.
  _?? ggf erst in einer späteren Phase mit einbauen ??_
- Für die Anmeldung wird auf Apple Technologie gesetzt und der User kann sich über seine Apple ID anmelden um so auf die CloudFunktion von Apple zuzugreifen

---
#### Home / MealList inklusive VM
- Auf dem Home Screen werden Anfangs nur 8 Random Gerichte aus 2 Kategorien zu sehen sein.
  _möglicherweise sind diese Kategorien wählbar oder dies geschieht auch in einer späteren Phase_
- Die Daten für diese Gerichte werden aus einem **_ViewModel_** geladen und dann in einer ForEach schleife angezeigt
  _bei der Wahl ob es eine Liste oder ein ScrollView wird bin ich mir noch unschlüssig. Dies werde ich während des Programmeriens der Screens entscheiden, da ich auf diese Weise am besten meine Designs beurteilen kann. Auch die Frage der Machbarkeit erledigt sich dabei._
- Jedes dieser Gerichte wird _klickbar_ sein, woraufhin man zum **_MealDetail_** gelangt. Hierfür werde ich einen Überblendungseffekt effekt nutzen, den ich aus de Buch [SwiftUI Animations Mastery[^1]](https://www.bigmountainstudio.com/animations/423bv) von Mark Moeykens habe.
- Des weiteren wird es ein User Profile geben, welches über einen Sheet nach oben fährt. Der Button dafür, wird in die toolbar des NavigationStack _vom SignIn_ Bereich kommen.

[^1]: **dies ist ein Affliate Link. Es handelt sich um eine bezahlte Partnerschaft.** _unabhängig davon, kann ich das Buch sehr empfehlen_

---
#### UserProfile inklusive VM
- Wird anfangs sehr kurz gehalten werden.
- Möglichkeit, der Wahl von Ernährungsart
- Auschschluss Tabelle _mit Hinweis auf Lebensmittelunverträglichkeitstests_

---
#### MealDetail
- Ein Bild des Gerichtes wird hier angezeigt werden
- Die dazu gehörigen Zutaten inklusive der jeweiligen Maßeinheit
- Auch die Arbeitsschritte sind zu sehen
- _hier bietet sich die Möglichkeit, mit Zeichnungen der jeweiligen Arbeitsschritte zu arbeiten_
- _alternativ findet man sicherlich viele Videos auf YouTube_ 🤷

---
#### Repository
- hier stellt sich zur Zeit noch die Frage, ob ich selbst eine API(?) oder möglicherweise auch einen Server bauen muss, da noch nicht sichergestellt ist, woher ich meine Daten bekomme.
> _stand 7. Sept.: habe ich 3 Websites, die sehr schönen Inhalt bieten angeschrieben oder angerufen, sollten sich hier neuigkeiten ereignen, werde ich dies hier selbstverständlich Updaten_

---
#### Model(s)
Um auch mit der Zeit zu gehen, werde ich für meinen PersistentStore SwiftData verwenden. Da ich erst in einer späteren Version die Möglichkeit einbinden werde, zwischen Android & Apple Geräten zu Switchen. Bleibt es auch vorerst dabei.
> möglicherweise, kann ich hier auch **AppleServer** verwenden

---
### Phase 3 & Erweiterungen
Ab hier lässt es sich leicht Feature Basiert zu arbeiten. Da Ich bis jetzt auch noch keinen **_TabView_** benutze um den Home Screen anzusteuern, kann ich so die App auf einfache Weise erweitern. Selbstverständlich ist das nicht alles, auch einige Screens werde ich um gewisse Funktionen erweitern.

---
#### SignIn || SignUp erweitern
- Da es sich um eine Kinder App handelt, möchte ich gleich schon beim einloggen auf relevante Dinge wie Anonymität & Sicherheit im Internet eingehen. _grade im Bezug auch zu den folgenden Informationen_
- Des weiteren werden beim SignUp auch User Informationen, wie bevorzugte Ernährungsweise etc abgefragt, sodass gleich ausschliesslich relevante Gerichte von der **_API_** geladen werden.

---
#### OnBoarding einbauen & UserProfil erweitern
- Hier sollen gleich die ersten wirklich wichtigen Punkte beim Kochen erklärt werden:
    - Hygiene
    - Sicherheit
    - Sauberes Arbeiten
    - Mülltrennung
- das UserProfilVM wird um den Boolean isOnBoarded erweitert
um die Erfolgschancen zu erhöhen, dass das OnBoarding auch wirklich verfolgt wird, werde ich hier mit Apples neuer TextAnimation arbeiten, sodass der Text ca in Lesegeschwindigkeit angezeigt wird
_gif Datei mit einem Beispiel dafür folgt_

---
#### Home & UserProfil erweitern und Quiz mit VM einbauen
- Um sicherzustellen, das der OnBoarding Teil auch _wirklich_ verstanden wurde, werden im Home Screen zu beginn nur 3 Gerichte angezeigt.
- Weitere Gerichte kann man nun dem Beantworten von Fragen zu den Themen aus dem OnBoarding _**Freischalten**_
- die Punkte aus dem Quiz geben an, welche Inhalte für den User freigeschaltet werden und welche nicht.
- das UserProfilVM wird um den Integer userPoints erweitert
- Quiz hat verschiedene Punkte stände und Kategorien

---
#### Nährwerte mit einbinden
hier gibt es einiges an Funktionsumfang zum einbinden. Das sind unter anderem:
- Repository bauen, um Daten zu Nährwerten etc zu erhalten
- UserProfileVM um Bereiche zum Tracken der eigenen Nährwerte etc…
- Auflisten der Werte
- Kritische Bereich markieren
- _hier bestet auch die Möglichkeit, zum anbinden der FitnessDaten ggf in Phase 3_

---
### _mögliche_ BONUS Features

#### FitnessDaten mit an die App anknüpfen

#### Wochenpläne für verschiedene Ernährungsweisen zum Ausprobieren

#### Tracking von gekauften Lebensmitteln durch scannen des Barcodes

#### Quiz & Wissen erweitern
mögliche Bereiche sind hier:
- Gesunde Lebensmittel, die die Heilung fördern(?) … etc …
- Geschmacksharmonien

#### ab 16 Edition
Bier & Wein erklärt

#### ab 18 Edition
Schnapps & Cocktails erklärt
Möglichkeit zum anbinden an andere Apps 😉

## CodeExamples
### Model(s)

- [ ] Meal
- [ ] MealCategory 
- [ ] MealTyp 
- [ ] DietForm
- [ ] Ingredient
- [ ] PreperationStep
- [ ] Level 
- [ ] Season
- [ ] Nutrition
- [ ] ```

```swift
import SwiftData
```

---
#### Meal
```swift
@Model
class Meal {
	let id: String
    let name: String
    var isFavorite: Bool = false
    let imageURL: String
    let details: String
    let duration: Int // in Minutes
    let mealCategory: MealCategory
    let level: Level
    let mealTyp: MealTyp
    let dietForms: [DietForm]
    let season: [Season]
    let ingredients: [Ingredient]
    let preperation: [PreperationStep]
    let nutritionInfo: NutritionInfo
}

```

---
#### MealCategory
```swift
@Model
class {
	let id: String
    let name: String
    var isFavorite: Bool = false
    let imageURL: String
    let details: String
    let dietForms: [DietForm]
    let ingredients: [Ingredient]
}
```

---
#### MealTyp
```swift
@Model
class {
	let id: String
    let name: String
    var isFavorite: Bool = false
    let imageURL: String
    let details: String
    let dietForms: [DietForm]
    let ingredients: [Ingredient]
}
```

---
#### DietForm
```swift
@Model
class {
	let id: String
    let name: String
    var isFavorite: Bool = false
    let imageURL: String
    let details: String
    
}
```

---
#### Ingredient
```swift
@Model
class {
	let id: String
    let name: String
    var isFavorite: Bool = false
    let imageURL: String
    let details: String
    var nutritionInfo: NutritionInfo
}
```

---
#### PreparationStep
```swift
@Model
class {
	let id: String
    let name: String
    var isCompleted: Bool = false
    let imageURL: String
    let details: String  
}
```

---
#### Level
```swift
@Model
class {
	let id: String
    let name: String
    var isCompleted: Bool = false
    let imageURL: String
    let details: String
    
}
```

---
#### Season
```swift
@Model
class {
	let id: String
    let name: String
    var isNow: Bool = false
    let imageURL: String
    let details: String
    
}
```

---
#### Nutrition
```swift
@Model
class NutritionInfo {
	let id: String
    let ingridient: Ingredient
    var fat: Int
    var saturatedFat: Int
    var kcal: Int
    var protein: Int
    
}
```

---
