## Find all files matching the pattern COD.csv in TFP folder

TFP_files <- list.files(
  path = "./TFP", # replace with the directory you want
  pattern = "*\\.csv$",
  full.names = TRUE # include the directory in the result
)

UNEM_files <- list.files(
  path = "./UNEM", # replace with the directory you want
  pattern = "*\\.csv$",
  full.names = TRUE # include the directory in the result
)
pdf(file = './final_results.pdf')
for (i in 1:length(TFP_files)){
  tfp_data = read.csv(TFP_files[i])
  logtfp = log(tfp_data$value[2 : length(tfp_data$value)]) - log(tfp_data$value[1 : length(tfp_data$value) - 1])
  
  unemp_data = read.csv(UNEM_files[i])[1:29,]
  logunem = log(unemp_data$Unemployment[2 : length(tfp_data$Unemployment)]) - log(unemp_data$Unemployment[1 : length(unemp_data$Unemployment) - 1])
  
  trial = lm(logtfp ~ 1 + logunem)
  
  plot(logunem, logtfp, main = unemp_data$Entity[1], xlab = "change in unemployment", ylab = "change in tfp")
  abline(trial)
}

