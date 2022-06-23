#' Ice cream rankings
#'
#' A dataset containing ice cream attributes and rankings from 15 (fictitious)
#' participants.
#'
#' @format A data frame with 150 rows and 7 variables:
#' \describe{
#'   \item{Observations}{profile number}
#'   \item{Flavor}{flavor of ice cream}
#'   \item{Packaging}{packaging of ice cream}
#'   \item{Light}{fat content of ice cream}
#'   \item{Organic}{is ice cream organic?}
#'   \item{individual}{ID for participant}
#'   \item{ranking}{ranking of ice cream, from 1 to 10}
#'   }
#' @source
#'   \url{https://help.xlstat.com/s/article/conjoint-analysis-in-excel-tutorial-new?language=en_US}
#'   \url{http://users.telenet.be/samuelfranssens/tutorial_data/icecream.xlsx}
"icecream"

#' Hospital Doctor Patient Dataset
#'
#' A dataset containing simulated data on lung cancer in a
#' three-level-hierarchical structure
#'
#' @format A data frame with 8525 rows and 4 variables:
#' \describe{
#'   \item{remission}{cancer in remission? (TRUE/FALSE)}
#'   \item{CancerStage}{stage of cancer}
#'   \item{Experience}{experience of doctor}
#'   \item{DID}{doctor ID}
#' }
#' @source \url{https://stats.idre.ucla.edu/r/codefragments/mesimulation/}
"hdp"

#' School data set
#'
#' A dataset containing simulated data on students in different schools. Note
#' that the variable names are not important as this is simulated data.
#'
#' @format A data frame with 1200 rows and 7 variables:
#' \describe{
#'   \item{id}{student ID}
#'   \item{extro}{probably extroversion}
#'   \item{open}{probably openness for experience}
#'   \item{agree}{probably agreeableness}
#'   \item{social}{?}
#'   \item{class}{ID for class}
#'   \item{school}{ID for school}
#'   }
#' @source
#' \url{http://bayes.acs.unt.edu:8083/BayesContent/class/Jon/R_SC/Module9/LMM_Examples.R}
#' \url{http://bayes.acs.unt.edu:8083/BayesContent/class/Jon/R_SC/Module9/lmm.data.txt}
"school"

#' Fehlende Werte 1 (Missing Values 1)
#'
#' A fictitious dataset containing 4 variables with 30 values missing completly at random.
#'
#' @format A data frame with 100 rows and 4 variables:
#' \describe{
#'   \item{IQ}{IQ}
#'   \item{Alter}{Alter}
#'   \item{LZ}{Lebenszufriedenheit}
#'   \item{KFZ}{Besitzen Sie ein Auto?}
#'   }
"FW_mcar"

#' Fehlende Werte 2 (Missing Values 2)
#'
#' A fictitious dataset containing 4 variables with 45 values missing at random.
#'
#' @format A data frame with 100 rows and 4 variables:
#' \describe{
#'   \item{IQ}{IQ}
#'   \item{Alter}{Age}
#'   \item{LZ}{life satisfaction}
#'   \item{KFZ}{car}
#'   }
"FW_mar"

#' Fehlende Werte 3 (Missing Values 3)
#'
#' A fictitious dataset containing 4 variables and a typical pattern of missing values which indicates a break off.
#'
#' @format A data frame with 100 rows and 4 variables:
#' \describe{
#'   \item{IQ}{IQ}
#'   \item{Alter}{Age}
#'   \item{LZ}{life satisfaction}
#'   \item{KFZ}{car}
#'   }
"FW_abbrecher"

#' Distanzen von 5 deutschen Städten
#'
#' Stadt_dist ist eine Matrix mit den Entfernungen (Luftlinie in km) zwischen
#' 5 deutschen Städten.
#'
#' @format A symmetric data.frame with 5 rows.
"Stadt_dist"

#' Präferenz für Früchte (fruit rating)
#'
#' A fictitious data set with preferences for four different fruits.
#'
#' @format A data frame with 4 rows and 4 variables:
#' \describe{
#'   \item{Apfel}{Rating of apple}
#'   \item{Birne}{Rating of pear}
#'   \item{Kirsche}{Rating of cherry}
#'   \item{Aprikose}{Rating of apricot}
#'   }
"Obst"

#' Straftaten
#'
#' A data set with similarity ratings for ten criminal offenses measured by pairwise comparison.
#'
#' @format A data frame with 30 rows and 45 variables:
#' \describe{
#'   \item{UntSac}{similaryt between failure to assist a person in danger and damage to property}
#'   \item{SteTru}{similaryt between tax evasion and drunk driving}
#'   \item{SacWid}{similaryt between damage to property and resistance against enforcement officers}
#'   \item{RauSte}{similaryt between misappropriation and tax evasion}
#'   \item{SteUnt}{similaryt between tax evasion and failure to assist a person in danger}
#'   \item{WidKoe}{similaryt between resistance against enforcement officers and damage to property}
#'
#'   \item{SteWid}{similaryt between tax evasion and resistance against enforcement officers}
#'   \item{EinTru}{similaryt between burglary and drunk driving}
#'   \item{KoeSac}{similaryt between misappropriation and damage to property}
#'   \item{SteEin}{similaryt between tax evasion and burglary}
#'   \item{EinKoe}{similaryt between burglary and damage to property}
#'   \item{VerWid}{similaryt between rape and resistance against enforcement officers}
#'   \item{WidRau}{similaryt between resistance against enforcement officers and damage to property}
#'
#'   \item{UntWid}{similaryt between failure to assist a person in danger and resistance against enforcement officers}
#'   \item{KoeTru}{similaryt between misappropriation and drunk driving}
#'   \item{EinUnt}{similaryt between burglary and failure to assist a person in danger}
#'   \item{TruSac}{similaryt between drunk driving and damage to property}
#'   \item{UntVer}{similaryt between failure to assist a person in danger and rape}
#'   \item{TruUnt}{similaryt between drunk driving and failure to assist a person in danger}
#'
#'   \item{WahSac}{similaryt between misappropriation and damage to property}
#'   \item{WidTru}{similaryt between resistance against enforcement officers and drunk driving}
#'   \item{TruVer}{similaryt between drunk driving and rape}
#'   \item{KoeSte}{similaryt between misappropriation and tax evasion}
#'   \item{RauUnt}{similaryt between misappropriation and failure to assist a person in danger}
#'   \item{KoeRau}{similaryt between misappropriation and damage to property}
#'   \item{WidEin}{similaryt between resistance against enforcement officers and burglary}
#'
#'   \item{SteWah}{similaryt between tax evasion and damage to property}
#'   \item{KoeVer}{similaryt between misappropriation and damage to property}
#'   \item{VerWah}{similaryt between misappropriation and damage to property}
#'   \item{EinWah}{similaryt between burglary and damage to property}
#'   \item{RauEin}{similaryt between misappropriation and burglary}
#'   \item{UntWah}{similaryt between failure to assist a person in danger and damage to property}
#'
#'   \item{SacVer}{similaryt between damage to property and rape}
#'   \item{RauWah}{similaryt between misappropriation and damage to property}
#'   \item{WahKoe}{similaryt between misappropriation and damage to property}
#'   \item{RauTru}{similaryt between misappropriation and drunk driving}
#'   \item{SteVer}{similaryt between tax evasion and rape}
#'   \item{SacEin}{similaryt between damage to property and burglary}
#'   \item{RauVer}{similaryt between misappropriation and rape}
#'
#'   \item{WahWid}{similaryt between misappropriation and resistance against enforcement officers}
#'   \item{RauSac}{similaryt between misappropriation and damage to property}
#'   \item{TruWah}{similaryt between drunk driving and damage to property}
#'   \item{KoeUnt}{similaryt between misappropriation and failure to assist a person in danger}
#'   \item{VerEin}{similaryt between rape and burglary}
#'   \item{SteSac}{similaryt between tax evasion and damage to property}
#'   }
"Straftaten"

#' Straftaten agreggierte Distanzen
#'
#' A distance matrix with mean aggregated distances for ten criminal offenses
#'
#' @format A distance matrix with 10 objects:
#' \describe{
#'   \item{Unt}{failure to assist a person in danger}
#'   \item{Ste}{tax evasion}
#'   \item{Sac}{damage to property}
#'   \item{Rau}{misappropriation}
#'   \item{Wid}{resistance against enforcement officers}
#'   \item{Tru}{drunk driving}
#'   \item{Sac}{damage to property}
#'   \item{Ein}{burglary}
#'   \item{Ver}{rape}
#'   \item{Koe}{bodily injury}
#'   }
"St_dist_aggr"


#' Individuelle Distanzen von Straftaten
#'
#' A list of 30 distance matrices with distances for ten criminal offenses.
#' Each matrix represents a individual rating
#'
#' @format A distance matrix with 10 objects:
#' \describe{
#'   \item{Unt}{failure to assist a person in danger}
#'   \item{Ste}{tax evasion}
#'   \item{Sac}{damage to property}
#'   \item{Rau}{misappropriation}
#'   \item{Wid}{resistance against enforcement officers}
#'   \item{Tru}{drunk driving}
#'   \item{Sac}{damage to property}
#'   \item{Ein}{burglary}
#'   \item{Ver}{rape}
#'   \item{Koe}{bodily injury}
#'   }
"St_dist_ind"

#' Mediation von Lernleistung (Meadiation of learning achievement)
#'
#' A fictitious dataset containing 3 variables for mediation
#'
#' @format A data frame with 30 rows and 3 variables:
#' \describe{
#'   \item{Motivation}{Motivation}
#'   \item{Lernleistung}{Lernleistung}
#'   \item{Unterrichtsguete}{Unterrichtsgüte}
#'   }
"Lehr_Lern"

#' Power_Pose
#'
#' A dataset of 16 cases beeing part of an powerposing experiment.
#'
#' @format A data frame with 10 rows and 3 variables:
#' \describe{
#'   \item{Pose}{Experimental condition: high powerpose vs. low powerpose}
#'   \item{Dominanz}{Dominance rating by the neutral obeserver}
#'   \item{Aktivitaet}{Activity}
#'   \item{Fuehrung}{External rating of leadership}
#'   \item{Moderator}{Moderation effect of Dom x Pose}
#'   }
"Power_Pose"

#' 6 Meditationsstudien (6 Studys of Meditation)
#'
#' A shortened dataset from Sedlmeier et al. (2018). The effect of six
#' Meditation studies.
#'
#' @format A data frame with 6 rows and 4 variables:
#' \describe{
#'   \item{Studie}{Author of the study}
#'   \item{Effekt_r}{Effectsize r}
#'   \item{N}{Number of participants}
#'   \item{AV}{Measurrement of the dependent variable}
#'   }
"Meditation"

#' dataset without publication bias
#'
#' A fictitious dataset with effectsizes from 56 studies.
#'
#' @format A data frame with 56 rows and 3 variables:
#' \describe{
#'   \item{N}{Number of participants}
#'   \item{r}{Effectsize r}
#'   \item{p}{p-value (two.tailed)}
#'   }
"pub_bias0"

#' A dataset with publication bias
#'
#' A dataset generated fram pub_bias0 with no nonsignificant p-values.
#'
#' @format A data frame with 28 rows and 3 variables:
#' \describe{
#'   \item{N}{Number of participants}
#'   \item{r}{Effectsize r}
#'   \item{p}{p-value (two.tailed)}
#'   }
"pub_bias1"

#' pedersen_2002
#'
#' Number of desired sexual partners
#'
#' @format  A dataset of 206 persons and their desired number of sexual partners.
#' A modified Version of Pedersen et al. (2002).
#' \describe{
#'   \item{person_id}{ID of participants}
#'   \item{desired}{Number of desired sexual partners}
#'   \item{sex}{male vs. female}
#'   }
"pedersen_2002"

#' VL_17
#'
#' Preference for cats and dogs
#'
#' @format  A dataset of 50 preference ratings for cats and dogs.
#' \describe{
#'   \item{Hunde}{Preference for dogs}
#'   \item{desired}{Preference for cats}
#'   }
"VL_17"

#' Mehrere AVs in einem Einzelfall
#'
#' @format  Erwins Daten aus einem AB-Einzelfalldesign
#' \describe{
#'   \item{Fall}{Name der ProbandInnen}
#'   \item{Phase}{Phase im Einzelfalldesign}
#'   \item{Pos_Emot}{Positive Emotionen}
#'   \item{Neg_Emot}{Negative Emotionen}
#'   \item{Angst}{Angstrating}
#'   \item{Depression}{Depressionrating}
#'   }
"Mehrere_AVs"

#' 6 Meditierende im Multiple Baseline Design (scan-Paket)
#'
#' @format  6 TeilnehmerInnen aus dem Multiple Baseline Experiment von Matko
#' et al. 2021 zur Wirkung von Meditation als scan-Objekt
#' \describe{
#'   \item{baseline}{Dauer der Baseline (d)}
#'   \item{study_day}{Studientag}
#'   \item{wellbeing}{Wohlbefinden}
#'   \item{phase}{Phase im Multiple Baseline Design}
#'   }
"Wellbeing_Daten"

#' Lebenszufriedenheit von 6 Einzelfällen
#'
#' 6 Meditierende im Multiple Baseline Design (data.frame)
#'
#' @format  6 TeilnehmerInnen eines multiple Baseline Experiment von Matko
#' et al. 2021 zur Wirkung von Meditation als data.frame im long-Format.
#' \describe{
#'   \item{baseline}{Dauer der Baseline (d)}
#'   \item{study_day}{Studientag}
#'   \item{wellbeing}{Wohlbefinden}
#'   \item{phase}{Phase im Multiple Baseline Design}
#'   }
"Wellbeing_kurz"

#' Befragung zur Arbeitszufriedenheit
#'
#' 176 Arbeitskräfte beantworten 10 Items zur Arbeitssituation.
#'
#' @format  176 Fälle bei 10 Variablen (data.frame)
#' \describe{
#'   \item{S1}{Mein Arbeitgeber achtet auf einen ordnungsgemäßen Arbeitsplatz.}
#'   \item{S2}{Mein Arbeitgeber bietet mir die modernste / aktuellste Sicherheitsausstattung.}
#'   \item{S3}{Mein Arbeitgeber hat Arbeitssicherheit Vorrang vor der Produktion.}
#'   \item{Q1}{In meinem Betrieb geht Produktqualität vor Quantität.}
#'   \item{Q2}{In meinem Betrieb wird Ressourcen Verschwendung vermieden.}
#'   \item{Q3}{In meinem Betrieb versuchen erkrankte Mitarbeiter so schnell wie möglich an den Arbeitsplatz zurückzukehren.}
#'   \item{Z1}{Ich bin zufrieden mit dem Organisationsklima und dem Teamgeist.}
#'   \item{Z2}{Ich bin zufrieden mit den Arbeitsbedingungen.}
#'   \item{Z3}{Ich bin zufrieden mit den Karrieremöglichkeiten in meinem Betrieb.}
#'   \item{Lohn}{Wohlbefinden}
#'   }
"Arbeit"
