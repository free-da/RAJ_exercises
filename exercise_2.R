# Exercise 2 (R)
# Analyse the esoph dataset. Can you derive some useful statements from it? 
# Use data() to see all available datasets. 

require(stats)
require(graphics) # for mosaicplot
View(esoph)
summary(esoph)
# agegp          alcgp         tobgp        ncases         ncontrols    
# 25-34:15   0-39g/day:23   0-9g/day:24   Min.   : 0.000   Min.   : 1.00  
# 35-44:15   40-79    :23   10-19   :24   1st Qu.: 0.000   1st Qu.: 3.00  
# 45-54:16   80-119   :21   20-29   :20   Median : 1.000   Median : 6.00  
# 55-64:16   120+     :21   30+     :20   Mean   : 2.273   Mean   :11.08  
# 65-74:15                                3rd Qu.: 4.000   3rd Qu.:14.00  
# 75+  :11                                Max.   :17.000   Max.   :60.00  
dim(esoph) # 88  5
##### How many cases of cancer were observed, on average, in subjects older that 75 (75+)?
# source: https://rstudio-pubs-static.s3.amazonaws.com/111594_35981f8fc4de46a6957517c2f234faa9.html
mean(subset(esoph$ncases, esoph$agegp == "75+")) # 1.181818 
# oder auch: 
alleUeber75 <- esoph[which(esoph[,"agegp"] == "75+"),]
mean(alleUeber75$ncases) # 1.181818

##### How many cancer cases were observed in subjects that drink over 120 gram of alcohol (120+) per day?
alleUeber120gramOfAlcohol <- esoph[which(esoph[,"alcgp"] == "120+"),]
sum(alleUeber120gramOfAlcohol$ncases) # 45

##### How many cancer cases in subjects with 30+ gm/day tobacco?
alleUeber30gramOfTobacco <- esoph[which(esoph[,"tobgp"] == "30+"),]
sum(alleUeber30gramOfTobacco$ncases) # 31

##### as opposed to those with 0-9g/day:
alleMit0bis9gramOfTobacco <- esoph[which(esoph[,"tobgp"] == "0-9g/day"),]
sum(alleMit0bis9gramOfTobacco$ncases) # 78, unerwartet...

##### How many cancer cases in subjects with 30+ gm/day tobacco AND over 120 gram of alcohol (120+) per day?
# alleUeber30gramOfTobacco <- esoph[which(esoph[,"tobgp"] == "30+"),]
alleUeber30gramOfTobaccoUnd120OfAlcohol <- alleUeber30gramOfTobacco[which(alleUeber30gramOfTobacco[,"alcgp"] == "120+"),]
sum(alleUeber30gramOfTobaccoUnd120OfAlcohol$ncases) # 10
nrow(alleUeber30gramOfTobaccoUnd120OfAlcohol) # 4
## 10 Fälle von Krebs unter 4 Patienten

##### as opposed to those with 0-9g/day of tobacco AND 0-39g/day of alcohol:
alleMit0bis9gramOfTobaccoAndAlmostNoAlcohol <- alleMit0bis9gramOfTobacco[which(alleMit0bis9gramOfTobacco[,"alcgp"] == "0-39g/day"),]
sum(alleMit0bis9gramOfTobaccoAndAlmostNoAlcohol$ncases) # 9
nrow(alleMit0bis9gramOfTobaccoAndAlmostNoAlcohol) # 6
##ODER:
subsetOfNoAlcAndNoTobacco <- subset(esoph, alcgp == "0-39g/day" & tobgp == "0-9g/day",)
nrow(subsetOfNoAlcAndNoTobacco) # 6
sum(subsetOfNoAlcAndNoTobacco$ncases) # 9
## 9 Fälle von Krebs unter 6 Patienten
