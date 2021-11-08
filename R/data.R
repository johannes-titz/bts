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
#'   \item{Alter}{Age}
#'   \item{LZ}{life satisfaction}
#'   \item{KFZ}{car}
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

#' Stadt_dist
#'
#' Stdt_dist gives the distances (in km) between 5 cities in Germany.
#'
#' @format A symmetric data.frame with 5 rows.
"Stadt_dist"

#' Obst
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


#' St_dist_ind
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

#' Sedlmeier
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
"Sedlmeier"

#' pub_bias0
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

#' pub_bias1
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
