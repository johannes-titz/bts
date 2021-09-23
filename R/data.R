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
