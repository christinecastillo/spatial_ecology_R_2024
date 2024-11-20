#Code for remote sensing data handling and analysis

#install.packages("devtools")

# install the imageRy package from GitHub
#install_github("ducciorocchini/imageRy")

# in case you have not terra
# install.packages("terra")

library(terra)
library(imageRy)

# list the data
im.list()

#https://gisgeography.com/sentinel-2-bands-combinations/

#importing the data
b2 <- im.import("sentinel.dolomites.b2.tif")

cl <- colorRampPalette(c("black", "grey", "light grey")) (100)
plot(b2, col=cl)

#Exercise: import b3 and plot it with the previous palette
# import the green band from Sentinel-2 (band 3)
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=cl)

# import the red band from Sentinel-2 (band 4)
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cl)

# import the NIR band from Sentinel-2 (band 8)
b8 <- im.import("sentinel.dolomites.b8.tif") 
plot(b8, col=cl)

# multiframe
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)

# stack images
sentstack <- c(b2, b3, b4, b8)
plot(sentstack, col=cl)
