R Script for Tiering V1

sizeData = read.deim("sizeData.txt")
sizeData = subset(sizeData, !is.na(tiering) & tiering != 0)

 n.bins = nrow(timescale)

sizeData$tiering = factor(sizeData$tiering, levels = 1:6)
my.tiering = data.frame()
for(i in 1:nrow(timescale)){temp.data = sizeData$tiering[