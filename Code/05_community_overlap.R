# relation among species in time
# Code to estimate the temporal overlap between species

#install.packages("overlap")

library(overlap)

data(kerinci)

#Exercise: show the first 6 rows of kerinci
head(kerinci)

summary(kerinci)

kerinci$Timecirc <- kerinci$Time*2*pi
head(kerinci)

#== important to select 
#tiger data
tiger <- kerinci[kerinci$Sps=="tiger",]

tigertime <- tiger$Timecirc
densityPlot(tigertime)

#Exercise: select only the data on macaque and assign them to a new objetc
macaque <- kerinci[kerinci$Sps=="macaque",]
head(macaque)

#Exercise: select time fot the macaque data and make a density plot
macaquetime <- macaque$Timecirc
densityPlot(macaquetime)

#To see how much the species are related to each other 
overlapPlot(tigertime, macaquetime)

#----------SQL
macaque <- kerinci[kerinci$Sps=="macaque",]
summary(macaque)

nomacaque <- kerinci[kerinci$Sps!="macaque",]
summary(nomacaque)
