set.seed(990101) #Change 990101 to your date of birth
link <- "https://raw.githubusercontent.com/mskoldSU/MT5003_HT17/master/Projekt/proj_data.csv"
data_individ <- read.csv(link)
idx <- sample(1:nrow(data_individ), 1000)
data_individ <- data_individ[idx, ]
save(data_individ, file = "proj_data.Rdata")
