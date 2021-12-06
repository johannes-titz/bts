## code to prepare `DATASET` dataset goes here

################################################
# Chapter MEA
# ice cream
download.file("http://users.telenet.be/samuelfranssens/tutorial_data/icecream.xlsx",
              "iscreamforicecream.xlsx")
icecream <- readxl::read_xlsx("iscreamforicecream.xlsx")
library(tidyr)
icecream <- as.data.frame(pivot_longer(icecream, cols = 6:20, names_to = "individual",
                                values_to = "ranking"))
write.csv(icecream, "data-raw/icecream.csv")
usethis::use_data(icecream, overwrite = TRUE)

# hdp
hdp <- read.csv("https://stats.idre.ucla.edu/stat/data/hdp.csv")
hdp <- hdp[, c("remission", "CancerStage", "Experience", "DID")]
write.csv(hdp, "data-raw/hdp.csv")
usethis::use_data(hdp, overwrite = TRUE)

# school
school <- read.table("http://bayes.acs.unt.edu:8083/BayesContent/class/Jon/R_SC/Module9/lmm.data.txt",
                   header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
write.csv(school, "data-raw/school.csv")
usethis::use_data(school, overwrite = TRUE)

######################################
## Chapter: Missing Values

# FW mcar
FW_mcar <- read.csv2("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/FW_mcar.csv")
write.csv(FW_mcar, "data-raw/FW_mcar.csv")
usethis::use_data(FW_mcar, overwrite = TRUE)

# FW mar
FW_mar <- read.csv2("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/FW_mar.csv")
write.csv(FW_mar, "data-raw/FW_mar.csv")
usethis::use_data(FW_mar, overwrite = TRUE)

# FW abbrecher
FW_abbrecher <- read.csv2("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/FW_abbrecher.csv")
write.csv(FW_abbrecher, "data-raw/FW_abbrecher.csv")
usethis::use_data(FW_abbrecher, overwrite = TRUE)

######################################
## Chapter 08 MDS

# Stadt_dist
library(readr)
Stadt_dist <- read_delim("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/Stadt_dist.csv",
                         delim = ";", escape_double = FALSE, locale = locale(encoding = "ISO-8859-1"),
                         trim_ws = TRUE)

Stadt_dist <- data.frame(Stadt_dist[ , 2:6])
row.names(Stadt_dist) <- colnames(Stadt_dist)
write.csv(Stadt_dist, "data-raw/Stadt_dist.csv")
usethis::use_data(Stadt_dist, overwrite = TRUE)

# Obst
Obst <- data.frame(Apfel = c(8,7,5,2),
                   Birne = c(6, 7, 4, 4),
                   Kirsche = c(4, 6,6, 6),
                   Aprikose = c(3,2,5,7)
)
write.csv(Obst, "data-raw/Obst.csv")
usethis::use_data(Obst, overwrite = TRUE)

# Straftaten
Straftaten <- read.csv2("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/Straftaten.csv")
write.csv(Straftaten, "data-raw/Straftaten.csv")
usethis::use_data(Straftaten, overwrite = TRUE)

# St_dist_aggr
St_dist_aggr <- read.csv("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/St_dist_aggr.csv",
                         row.names = 1)
write.csv(St_dist_aggr, "data-raw/St_dist_aggr.csv")
usethis::use_data(St_dist_aggr, overwrite = TRUE)

# St_dist_ind
get_distances_from_row <- function(sep_row, allnames) {
  dist_list <- NULL
  for (i in seq_along(allnames)) {
    pat <- allnames[i]
    # Extrahiere die Werte anhand der jeweiligen Straftat und füge die 0
    # (die Ähnlichkeit der Straftat mit sich selbst) hinzu.
    pat_means <- c(sep_row[grep(pat, names(sep_row))], 0)
    # Extrahiere die Namen der Straftaten
    allnames2 <- c(
      unlist(lapply(
        strsplit(names(sep_row[grep(pat, names(sep_row))]), split = pat),
        function(x) x[length(x)])
      ), pat)
    # Füge die korrekten Bezeichnungen hinzu
    names(pat_means) <- allnames2
    # ordne die Werte alphabetisch nach der Bezeichnung
    dist_list[[i]] <- pat_means[order(names(pat_means))]
  }
  # Speichere die Liste als Distanzmatrix
  dists <- as.dist(do.call(cbind, dist_list), upper = T)
  return(dists)
}
# Erstellung der Dsitanzmatrix
allnames <- c("Ein", "Koe", "Rau", "Sac",  "Ste", "Tru", "Unt", "Ver", "Wah",
              "Wid")
St_dist_ind <- NULL
for (i in 1:30) {
  St_dist_ind[[i]] <- get_distances_from_row(
    Straftaten[i, ],
    allnames = allnames)
}
usethis::use_data(St_dist_ind, overwrite = TRUE)

######################################
## Chapter: Pfadanalysen
####################################
# ## generate non-scaled data
library(MASS)
library(Matrix)
ms <- c(0, 0, 0) ### specify means
S1 <- matrix(c(10, 8.6, 7.4,
               8.6, 10, 7.5,
               7.4, 7.5, 10
) / 10,
ncol = 3, byrow = T)
# create data
set.seed(123122)
d <- as.data.frame(mvrnorm(n = 90, mu = ms, S1, tol = .5))
round(cor(d), 2)
Motivation <- c(98, 98, 103, 101, 100, 106, 111, 125, 120, 115)
Motivation <- c(c(98, 98, 103, 101, 100, 106, 111, 125, 120, 115),
                round(d$V1 * sd(Motivation) + mean(Motivation)))

Lernleistung <- c(4, 5, 6, 7, 8, 10, 11, 12, 14, 15)
Lernleistung <- abs(c(4, 5, 6, 7, 8, 10, 11, 12, 14, 15,
                      round(d$V2 * sd(Lernleistung) + mean(Lernleistung))))

Unterrichtsguete <- c(5, 6.5, 7, 5.5, 9, 6.5, 8, 10.5, 8, 10)
Unterrichtsguete <- c(c(5, 6.5, 7, 5.5, 9, 6.5, 8, 10.5, 8, 10),
                      round(d$V3 * sd(Unterrichtsguete) + mean(Unterrichtsguete),
                            1))

Lehr_Lern <- data.frame(Motivation, Lernleistung, Unterrichtsguete)
Lehr_Lern <- Lehr_Lern[1:30, ]
write.csv(Lehr_Lern, "data-raw/Lehr_Lern.csv")
usethis::use_data(Lehr_Lern, overwrite = TRUE)

Power_Pose <- read.csv2("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/Power_Pose.csv")
write.csv(Power_Pose, "data-raw/Power_Pose.csv")
usethis::use_data(Power_Pose, overwrite = TRUE)

######################################
## Chapter 02: Metaanalyse

# Meditation
Meditation <- data.frame(
  Studie = c("Geary_2011", "Carissoli_2015", "Kang_2014", "Shearer_2016a",
             "Shearer_2016b", "Greeson_2014"),
  Effekt_r = c(.32, -.05, .18, .5, .39, .22),
  N = c(108, 38, 68, 53, 47, 90),
  AV = c(rep( c("Fragebogen", "Heart Rate Variablity"), c(3,2)), "Fragebogen")
)
write.csv(Meditation, "data-raw/Meditation.csv")
usethis::use_data(Meditation, overwrite = TRUE)

# craate Data for publicationbias
set.seed(546451)
Pop1 <- rnorm(20000, 0, 1)
Pop2 <- rnorm(20000, .5, 1)
k  <- 56
N <- round(rnorm(k-10, 40, 10))
N <- c(N,round(runif(10, 100,200) ))
M1 <- matrix(NA, ncol=3, nrow=k)
for(i in 1:k){
  ix <- sample(1:40000, N[i])
  r <- cor(c(Pop1, Pop2)[ix],
           ifelse(ix <=20000, 0,1)
  )
  p <- cor.test(c(Pop1, Pop2)[ix],
                ifelse(ix <=20000, 0,1))$p.value

  M1[i,1] <- N[i]
  M1[i,2] <- r
  M1[i,3] <- round(p, 3)
}
pub_bias0 <- data.frame(M1)
pub_bias1 <- data.frame(M1[which(M1[,3] <=0.05) ,])
colnames(pub_bias0) <- c("N", "r", "p")
colnames(pub_bias1) <- c("N", "r", "p")
write.csv(pub_bias0, "data-raw/pub_bias0.csv")
usethis::use_data(pub_bias0, overwrite = TRUE)
write.csv(pub_bias1, "data-raw/pub_bias1.csv")
usethis::use_data(pub_bias1, overwrite = TRUE)

######################################
## Chapter: Strukturgleichungsmodelle
library(readr)
Arbeit <- read_delim("data-raw/Arbeit.csv",
                     delim = ";", escape_double = FALSE, trim_ws = TRUE)
write.csv(Arbeit, "data-raw/Arbeit.csv")
usethis::use_data(Depression, overwrite = TRUE)

##### MB
St_dist_aggr <- read.csv("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/St_dist_aggr.csv",
                         row.names = 1)
Straftaten <- read.csv2("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/Straftaten.csv")
####################################################################


####################################################################
# Chapter 03: Resampling-Verfahren

# Pedersen
pedersen_2002 <- read.csv("https://www.pearson-studium.de/einfuehrung_r/pedersen_2002.txt", sep = "")
write.csv(pedersen_2002, "data-raw/pedersen_2002.csv")
usethis::use_data(pedersen_2002, overwrite = TRUE)

VL_17 <- read.csv("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/VL17.csv")
write.csv(pedersen_2002, "data-raw/VL17.csv")
usethis::use_data(VL_17, overwrite = TRUE)

####################################################################
# Chapter 9: Einzelfallanalyse
Mehrere_AVs <- read.csv("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/Mehrere_AVs.csv")
write.csv(Mehrere_AVs, "data-raw/Mehrere_AVs.csv")
usethis::use_data(Mehrere_AVs, overwrite = TRUE)

library(scan)
Wellbeing_Daten <- readSC("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/wellbeing_kurz.csv",
                          cvar = "case", pvar = "phase",
                          dvar = "wellbeing", mvar = "study_day",
                          phase.names = c("A", "B"))
usethis::use_data(Wellbeing_Daten, overwrite = TRUE)

Wellbeing_kurz <- read.csv("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/wellbeing_kurz.csv")
write.csv(Wellbeing_kurz, "data-raw/wellbeing_kurz.csv")
usethis::use_data(Wellbeing_kurz, overwrite = TRUE)



