## code to prepare `DATASET` dataset goes here

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
## Chapter: MDS

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

# Strafen
Strafen <- read.csv2("https://www-user.tu-chemnitz.de/~burma/TUC_R/Band2/Strafen.csv")
write.csv(Strafen, "data-raw/Strafen.csv")
usethis::use_data(Strafen, overwrite = TRUE)

######################################
## Chapter: Metaanalyse

# Sedlmeier
Sedlmeier <- data.frame(
  Studie = c("Geary_2011", "Carissoli_2015", "Kang_2014", "Shearer_2016a",
             "Shearer_2016b", "Greeson_2014"),
  Effekt_r = c(.32, -.05, .18, .5, .39, .22),
  N = c(108, 38, 68, 53, 47, 90),
  AV = c(rep( c("Fragebogen", "Heart Rate Variablity"), c(3,2)), "Fragebogen")
)
write.csv(Sedlmeier, "data-raw/Sedlmeier.csv")
usethis::use_data(Sedlmeier, overwrite = TRUE)

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

