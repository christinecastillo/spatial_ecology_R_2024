#Time series analysis in R

library(terra)
library(imageRy)

# Listing all the available files
im.list()

#Import Data
EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

# Differencing images in time
difEN = EN01[[1]] - EN13[[1]]

plot(difEN)

# Example: ice melt in Greenland data

gr <- im.import("greenland")
plot(gr[[1]])
plot(gr[[4]])

# Example: plot in a multiframe the first and the last elements of gr

par(mfrow=c(1,2))
plot(gr[[1]])
plot(gr[[4]])

dev.off()
difgr = gr[[1]] - gr[[4]]
plot(difgr)

#Exercise: Compose RGB with greenland images in R G B
im.plotRGB(gr, r=1, g=2, b=4) #todos los pixeles tendran mayor blue en 4, green en 2, y red en 1. 

 #gr: 2000, 2005, 2015

im.ridgeline() #still developing 
