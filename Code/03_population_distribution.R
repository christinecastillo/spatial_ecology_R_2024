# Why populations disperse over the landscape in a certain manner?

install.packages("terra")
library(sdm)
library(terra)

file <- system.file("external/species.shp", package="sdm")
# [1] "C:/Users/chris/AppData/Local/R/win-library/4.4/sdm/external/species.shp"

rana <- vect(file)
rana$Occurrence

plot(rana)

# Selecting presences
pres <- rana[rana$Occurrence==1,]   #SQL language uses double == and everything end with , 
plot(pres)
pres$Occurrence

par(mfrow=c(1,2))
plot(rana)
plot(pres)

# exercise: select absence and call them abse
abse <- rana[rana$Occurrence==0,]
abse
dev.off()
plot(abse)

# exrecise: plot presences and absences, one beside the other
par(mfrow=c(1,2))
plot(pres)
plot(abse)

# your new friend in case of graphical nulling:
dev.off()

# exercise: plot pres and abse altogether with two different colours
plot(pres, col="dark blue")
points(abse, col="light blue")
plot(pres, col="blue")
points(abse, col="red")

# predictors: environmental variables
# file <- system.file("external/species.shp", package="sdm")
# rana <- vect(file)

# elevation predictor
elev <- system.file("external/elevation.asc", package="sdm") 
elev
# [1] "C:/Users/chris/AppData/Local/R/win-library/4.4/sdm/external/elevation.asc"

elevmap <- rast(elev) # from terra package
plot(elevmap)
cl <- colorRampPalette(c("black", "salmon", "pink", "purple"))(100)
plot(elevmap, col="cl")
clcl <- colorRampPalette(c("black", "lightskyblue", "midnightblue", "darkolivegreen4"))(100)
plot(elevmap, col=clcl)

points(pres, cex=.5)

# temperature predictor
temp <- system.file("external/temperature.asc", package="sdm") 
tempmap <- rast(temp) # from terra package
plot(tempmap)
points(pres, cex=.5)
points(pres, pch=19)





# exrcise: do the same with vegetation cover
vege <- system.file("external/vegetation.asc", package="sdm") 
vegemap <- rast(vege) # from terra package
plot(vegemap)
points(pres, cex=.5)

# exrcise: do the same with vegetation cover
prec <- system.file("external/precipitation.asc", package="sdm") 
precmap <- rast(prec) # from terra package
plot(precmap)
points(pres, cex=.5)

# final multiframe

par(mfrow=c(2,2))

# elev
plot(elevmap)
points(pres, cex=.5)

# temp
plot(tempmap)
points(pres, cex=.5)

# vege
plot(vegemap)
points(pres, cex=.5)

# prec
plot(precmap)
points(pres, cex=.5)
