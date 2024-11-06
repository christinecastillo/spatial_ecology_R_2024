# This code is related to multivariate analysis in R for monitoring communities
# to see the relationship in space among different species 
# https://cran.r-project.org/web/packages/vegan/index.html

# install.packages("vegan") #to install
library(vegan)  #to see if there is any mistake

#Dataset
data(dune)
dune
head(dune)   #show you just fisrt 6 lines
# View(dune)  #me muestra la tablita con toda la info aparte

#Analysis
multivar <- decorana(dune)   # decorana compacta la info no solo la dimension sino que se extienda tanto
multivar

#Axis lenght
dca1 <- 3.7004
dca2 <- 3.1166
dca3 <- 1.30055
dca4 <- 1.47888

dca1 = 3.7004
dca2 = 3.1166
dca3 = 1.30055
dca4 = 1.47888

total <- dca1 + dca2 + dca3 + dca4

#Proportions
prop1 = dca1/total
prop2 = dca2/total
prop3 = dca3/total
prop4 = dca4/total

#Percentages
perc1 = prop1*100
perc2 = prop2*100
perc3 = prop3*100
perc4 = prop4*100

#Whole amount of variability
perc1+perc2
# 71.03683
# The first two axes explain 715 of variability

plot(multivar)


# Achillea millefolium
# Bromus hordeaceus
