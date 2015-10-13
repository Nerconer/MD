#Note: Take care to use "/" fo the directory file. "\" provides errors

#setwd("D:/karina/docencia/DataMiningGEI/practiques/2Preprocessing")
source("path.r")
getwd()

dd <- read.csv(file="NBA-Pbp-Sample-Game-Data.csv",head=TRUE,sep=",")

#Object class
class(dd)

#Number of rows & cols
dim(dd)

#Names of the columns
names(dd)

summary(dd)

#DB is attached to the R search path
attach(dd)

boxplot(play_id)

# DECLARE CATEGORICAL 
#Dictamen    <- as.factor(Dictamen)
#Vivienda     <- factor(Vivienda)
#Estado.civil <- factor(Estado.civil)
#Registros   <- factor(Registros)
#Tipo.trabajo <-factor(Tipo.trabajo)
event <- factor(event_type)

#mean(Dictamen)

#Look at modalities
#levels(Dictamen)
levels(event)
summary(event)
barplot(table(event))
pie(table(event))

#Labelling modalities, when required. Check dictionary. WARNING: Sequential assignment with levels
#levels(Dictamen) <- c(NA, "positiu","negatiu")

View(dd)

summary(dd)

#save transformation
#write.table(dd, file = "credscoCategoriques.csv", sep = ";", na = "NA", dec = ".", row.names = FALSE, col.names = TRUE)

#delete the lasts rows
dd <- dd[-c(492, 493, 494, 495, 496, 497, 498, 499), ]

summary(dd$event_type)
pie(table(dd$event_type))

barplot(table(dd$event_type))

summary(factor(dd$entered))

summary(factor(dd$left))
  
