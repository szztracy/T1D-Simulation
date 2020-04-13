setwd("D:/Projects/T1D/Figures")
library(beeswarm)
Mydata31=read.csv("Figure Sbox31.csv")
Mydata32=read.csv("Figure Sbox32.csv")
Mydata33=read.csv("Figure Sbox33.csv")
Mydata34=read.csv("Figure Sbox34.csv")

tiff("Figure Sbox3.tiff", width = 17, height = 10, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1),mfrow=c(2,2),font.axis=2)

#--------------Figure sbox31------------------------------------

#tiff("Figure 7a.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

boxplot(y ~ x, data = Mydata31, 
        outline = FALSE,size=2,cex.axis=2,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32))
beeswarm(y ~ x, data = Mydata31, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)
#box(lwd=3,frame.plot=FALSE) 

title(xlab="Speed of activated CD8+ T cells in islets (um/h)", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox32------------------------------------

#tiff("Figure 7b.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))

boxplot(y ~ x, data = Mydata32, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32), xlim=c(0.8,9.2))
beeswarm(y ~ x, data = Mydata32, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Speed of CTLs in islets (um/h)", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox33------------------------------------

#tiff("Figure 7c.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata33, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE,ylim=c(10,32))
beeswarm(y ~ x, data = Mydata33, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Speed of DCs in islets (um/h)", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox34------------------------------------

#tiff("Figure 7d.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata34, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32))
beeswarm(y ~ x, data = Mydata34, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)


title(xlab="Speed of naive CD8+ T cells in PLNs (um/h)",ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

dev.off()
