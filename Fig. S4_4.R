setwd("D:/Projects/T1D/Figures")
library(beeswarm)
Mydata41=read.csv("Figure Sbox41.csv")
Mydata42=read.csv("Figure Sbox42.csv")
Mydata43=read.csv("Figure Sbox43.csv")
Mydata44=read.csv("Figure Sbox44.csv")

tiff("Figure Sbox4.tiff", width = 17, height = 10, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1),mfrow=c(2,2),font.axis=2)

#--------------Figure sbox41------------------------------------

#tiff("Figure 7a.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

boxplot(y ~ x, data = Mydata41, 
        outline = FALSE,size=2,cex.axis=2,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata41, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)
#box(lwd=3,frame.plot=FALSE) 


title(xlab="Maximum number of DCs binding to naive CD8+ T cells", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox42------------------------------------

#tiff("Figure 7b.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))

boxplot(y ~ x, data = Mydata42, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32), xlim=c(0.8,9.2),ann=FALSE)
beeswarm(y ~ x, data = Mydata42, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Maximum number of antigens binding to DCs", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox43------------------------------------

#tiff("Figure 7c.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata43, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE,ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata43, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Maximum number of beta cells binding to CTLs", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox44------------------------------------

#tiff("Figure 7d.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata44, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata44, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)


title(xlab="Maximum number of CTLs binding to beta cells",ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

dev.off()
