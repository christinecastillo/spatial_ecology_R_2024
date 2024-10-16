# Code related to population ecology

# A package is needed for point pattern analysis
# install.packages("spatstat")
library(spatstat)

# let's use the bei data:
# data description:
# https://CRAN.R-project.org/package=spatstat

bei

# plotting the data
plot(bei)

# changing dimension - cex
plot(bei, cex=.2)

# changing the symbol - pch
plot(bei, cex=.2, pch=19)

# additional datasets
bei.extra
plot(bei.extra)

# let's use only part of the dataset: elev
plot(bei.extra$elev)
elevation <- bei.extra$elev
plot(elevation)

# second method to select elements
elevation2 <- bei.extra[[1]]
plot(elevation2)

# passing from points to a countinuous surface
densitymap <- density(bei)
plot(densitymap)
points(bei, col="green")
points(bei, cex=.2)

# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

cl <- colorRampPalette(c("black", "red", "orange", "yellow"))(100)
plot(densitymap, col=cl)

cl <- colorRampPalette(c("black", "red", "orange", "yellow"))(4)
plot(densitymap, col=cl)

clnew <- colorRampPalette(c("dark blue", "blue", "light blue"))(100)
plot(densitymap, col=clnew)

plot(bei.extra)

elev <- bei.extra[[1]] # bei.extra$elev
plot(elev)

################ DAY 2 

# multiframe
par(mfrow=c(1,2))   #1 row, 2 column 
plot(densitymap)
plot(elev)

par(mfrow=c(2,1))
plot(densitymap)
plot(elev)

par(mfrow=c(1,3))
plot(bei)
plot(densitymap)
plot(elev)

#one friend to clear graphs
dev.off()
plot(elev)

#changin colors to maps https://www.rdocumentation.org/packages/dichromat/versions/1.1/topics/colorRampPalette
colorRampPalette #importante usar las mayusculas
cl <- colorRampPalette(c("red","orange","yellow"))(3)
plot(densitymap, col=cl)
cl <- colorRampPalette(c("red","orange","yellow"))(10)
plot(densitymap, col=cl)
cl <- colorRampPalette(c("red","orange","yellow"))(100)
plot(densitymap, col=cl)

# search your browser for "colors in R"
# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
cl <- colorRampPalette(c("darksalmon","lightpink","violetred"))(100)
plot(densitymap, col=cl)

par(mfrow=c(1,2))
cl <- colorRampPalette(c("darksalmon","lightpink","violetred"))(100)
cm <- colorRampPalette(c("darkslategray1","lightcoral","hotpink4"))(100)
plot(densitymap, col=cl)
plot(densitymap, col=cm)

 dev.off()
null device 
        
par(mfrow=c(2,1))
plot(elev)
points(bei, col="green")





