---
output: 
  github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



<!-- ANLEITUNG FÜR MARKUS UND PETER -->
<!-- Zwei Schritte: -->

<!-- 1. In der Datei data-raw/DATASET.R Kommandos für das Holen der Daten ausführen. Am Ende über den Befehl usethis::use_data(...) Daten im Paket zur Verfügung stellen. Ich hab meine Dateien auch als csv gespeichert, sodass man sie gebündelt hat. -->

<!-- 2. In der Datei R/data.R Datensatz dokumentieren -->

<!-- Daten sind dann am Ende im bts Paket (momentan auf github), Installation beispielsweise über devtools::install_github("johannes-titz/bts") -->

<!-- Aufruf der Daten über data(...) nachdem bts geladen ist. Siehe auch die folgende Anleitung.-->

# bts

The package provides data sets for the book "Datenanalyse mit R: Fortgeschrittene Verfahren", Burkhardt, Titz, Sedlmeier, Pearson Studium Psychologie, (ISBN-10: 3868944133, ISBN-13: 978-3868944136)

## Installation and use
Install it via devtools (choose your own repo):


```r
install.packages("devtools", repos = "https://ftp.fau.de/cran/")
devtools::install_github("johannes-titz/bts")
```

or via librarian (choose your own repo):


```r
install.packages("librarian", repos = "https://ftp.fau.de/cran/")
librarian::shelf(johannes-titz/bts)
```

To load the data, for instance icecream:


```r
library(bts)
data(icecream)
head(icecream)
```



|Observations |Flavor    |Packaging       |Light      |Organic     |individual   | ranking|
|:------------|:---------|:---------------|:----------|:-----------|:------------|-------:|
|Profile 1    |Raspberry |Homemade waffle |No low fat |Not organic |Individual 1 |       1|
|Profile 1    |Raspberry |Homemade waffle |No low fat |Not organic |Individual 2 |       6|
|Profile 1    |Raspberry |Homemade waffle |No low fat |Not organic |Individual 3 |       5|
|Profile 1    |Raspberry |Homemade waffle |No low fat |Not organic |Individual 4 |       1|
|Profile 1    |Raspberry |Homemade waffle |No low fat |Not organic |Individual 5 |       2|
|Profile 1    |Raspberry |Homemade waffle |No low fat |Not organic |Individual 6 |       7|



## Data Sets

Currently available data sets are:


```r
data(package = "bts")
```



Table: Data sets in bts

|Item            |Title                                                           |
|:---------------|:---------------------------------------------------------------|
|Arbeit          |Befragung zur Arbeitszufriedenheit                              |
|FW_abbrecher    |Fehlende Werte 3 (Missing Values 3)                             |
|FW_mar          |Fehlende Werte 2 (Missing Values 2)                             |
|FW_mcar         |Fehlende Werte 1 (Missing Values 1)                             |
|Lehr_Lern       |Mediation von Lernleistung (Meadiation of learning achievement) |
|Meditation      |6 Meditationsstudien (6 Studys of Meditation)                   |
|Mehrere_AVs     |Mehrere AVs in einem Einzelfall                                 |
|Obst            |Präferenz für Früchte (fruit rating)                            |
|Power_Pose      |Power_Pose                                                      |
|St_dist_aggr    |Straftaten agreggierte Distanzen                                |
|St_dist_ind     |Individuelle Distanzen von Straftaten                           |
|Stadt_dist      |Distanzen von 5 deutschen Städten                               |
|Straftaten      |Straftaten                                                      |
|VL17            |                                                                |
|VL_17           |VL_17                                                           |
|Wellbeing_Daten |6 Meditierende im Multiple Baseline Design (scan-Paket)         |
|Wellbeing_kurz  |Lebenszufriedenheit von 6 Einzelfällen                          |
|hdp             |Hospital Doctor Patient Dataset                                 |
|icecream        |Ice cream rankings                                              |
|ind_dist_list   |                                                                |
|pedersen_2002   |pedersen_2002                                                   |
|pub_bias0       |dataset without publication bias                                |
|pub_bias1       |A dataset with publication bias                                 |
|school          |School data set                                                 |

To get information about a data set use

```r
help(icecream)
Ice cream rankings

Description:

     A dataset containing ice cream attributes and rankings from 15
     (fictitious) participants.

Usage:

     icecream
     
Format:

     A data frame with 150 rows and 7 variables:

     Observations profile number

     Flavor flavor of ice cream

     Packaging packaging of ice cream

     Light fat content of ice cream

     Organic is ice cream organic?

     individual ID for participant

     ranking ranking of ice cream, from 1 to 10

Source:

     <https://help.xlstat.com/s/article/conjoint-analysis-in-excel-tutorial-new?language=en_US>
     <http://users.telenet.be/samuelfranssens/tutorial_data/icecream.xlsx>
```
