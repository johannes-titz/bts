## code to prepare `DATASET` dataset goes here
download.file("http://users.telenet.be/samuelfranssens/tutorial_data/icecream.xlsx",
              "iscreamforicecream.xlsx")
icecream <- readxl::read_xlsx("iscreamforicecream.xlsx")
library(tidyr)
icecream <- as.data.frame(pivot_longer(icecream, cols = 6:20, names_to = "individual",
                                values_to = "ranking"))
write.csv(icecream, "data-raw/icecream.csv")
usethis::use_data(icecream, overwrite = TRUE)

hdp <- read.csv("https://stats.idre.ucla.edu/stat/data/hdp.csv")
hdp <- hdp[, c("remission", "CancerStage", "Experience", "DID")]
write.csv(hdp, "data-raw/hdp.csv")
usethis::use_data(hdp, overwrite = TRUE)

school <- read.table("http://bayes.acs.unt.edu:8083/BayesContent/class/Jon/R_SC/Module9/lmm.data.txt",
                   header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)

write.csv(school, "data-raw/school.csv")
usethis::use_data(school, overwrite = TRUE)
