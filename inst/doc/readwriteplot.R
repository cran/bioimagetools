## ----loadlibrary, cache=TRUE--------------------------------------------------
library(bioimagetools)

## ----readtif, warnings=FALSE, collapse=TRUE-----------------------------------
cell <- bioimagetools::readTIF("http://ex.volkerschmid.de/cell.tif")
print(dim(cell))
print(attributes(cell)$dim)
print(attributes(cell)$bits.per.sample)
par(pty="s")
bioimagetools::img(cell, z=25 ,col="rgb")

## ----writetif, warnings=FALSE, collapse=TRUE, cache=TRUE----------------------
writeTIF(cell, file="my_cell.tif")

## ----readclasstif, warnings=FALSE, collapse=TRUE, cache=TRUE------------------
bioimagetools::writeTIF(2*EBImage::thresh(cell[,,1,])+EBImage::thresh(cell[,,2,]), file="simple.tif")
mysimple <- readClassTIF("simple.tif", n=3)
par(pty="s")
bioimagetools::img(mysimple[,,25],col="red",up=3)

## ----remove, echo=FALSE-------------------------------------------------------
file.remove("my_cell.tif")
file.remove("simple.tif")

## ----img, warnings=FALSE, collapse=TRUE, cache=TRUE---------------------------
par(pty="s")
bioimagetools::img(cell, z=25, col="rgb")
bioimagetools::img(cell, z=25, col="r")
bioimagetools::img(cell, z=25, col="grey")

## ----readMBP, warnings=FALSE, collapse=TRUE, cache=TRUE-----------------------
bi<-readBMP(system.file(package = "bioimagetools","extdata", "V.bmp"))
par(pty="s")
image(bi, col=grey(seq(0,1,length=2^8)))

