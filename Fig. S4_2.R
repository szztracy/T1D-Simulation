setwd("D:/Projects/T1D/Figures")
library(beeswarm)
Mydata21=read.csv("Figure Sbox21.csv")
Mydata22=read.csv("Figure Sbox22.csv")
Mydata23=read.csv("Figure Sbox23.csv")
Mydata24=read.csv("Figure Sbox24.csv")

tiff("Figure Sbox2.tiff", width = 17, height = 10, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1),mfrow=c(2,2),font.axis=2)

#--------------Figure sbox21------------------------------------

#tiff("Figure 7a.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

boxplot(y ~ x, data = Mydata21, 
        outline = FALSE,size=2,cex.axis=2,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata21, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)
#box(lwd=3,frame.plot=FALSE) 

title(xlab="Initial number of naive CD8+ T cells", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox22------------------------------------

#tiff("Figure 7b.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))

boxplot(y ~ x, data = Mydata22, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32), xlim=c(0.8,9.2),ann=FALSE)
beeswarm(y ~ x, data = Mydata22, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Time required for CTLs movement in islets (h)", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox23------------------------------------

#tiff("Figure 7c.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata23, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE,ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata23, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Time required for activated CD8+ T cells movement (h)", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox24------------------------------------

#tiff("Figure 7d.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata24, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata24, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)


title(xlab="Speed of DCs in PLNs (um/h)",ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

dev.off()
