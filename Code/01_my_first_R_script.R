#take home message:
#object
#assign
#array
#function(), example: c(), plot()


# R can be used as a calculator 
2+3

sonia <- 2 + 3 # I assign the result of the operation to an object
sonia

lea <-3+4
lea

sonia+lea
sonia^lea

tommaso <- c(10, 20, 30, 50, 70) # this is an array
tommaso

erica <- c(1, 3, 5, 7, 9) 
erica

plot(tommaso, erica) 
#pch is changing the point character
plot(tommaso, erica, pch=19)

#changing the color
plot(tommaso, erica, col="bisque")

#character exaggeration
plot(tommaso, erica, pch=19, col="blue", cex=5)

plot(tommaso, erica, pch=19, col="blue", cex=2, xlab="cannabis", ylab="dolphins")
