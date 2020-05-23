setwd("D:/Projects/T1D/Figures")
library(beeswarm)
Mydata11=read.csv("Figure Sbox11.csv")
Mydata12=read.csv("Figure Sbox12.csv")
Mydata13=read.csv("Figure Sbox13.csv")
Mydata14=read.csv("Figure Sbox14.csv")

tiff("Figure Sbox1.tiff", width = 17, height = 10, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1),mfrow=c(2,2),font.axis=2)

#--------------Figure sbox11------------------------------------

#tiff("Figure 7a.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

boxplot(y ~ x, data = Mydata11, 
        outline = FALSE,size=2,cex.axis=2,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata11, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)
#box(lwd=3,frame.plot=FALSE) 


title(xlab="Average lifespan of activated CD8+ T cells in islets (h)", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox12------------------------------------

#tiff("Figure 7b.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))

boxplot(y ~ x, data = Mydata12, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32), xlim=c(0.8,9.2),ann=FALSE)
beeswarm(y ~ x, data = Mydata12, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Percentage of activated CD8+ T cells becoming CTLs", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox13------------------------------------

#tiff("Figure 7c.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')

par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata13, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE,ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata13, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Average lifespan of apoptotic beta cells (h)", ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

#--------------Figure sbox14------------------------------------

#tiff("Figure 7d.tiff", width = 10, height = 7, units = 'in', res = 400, compression = 'lzw')
par(mar=c(6,6,1,1))
boxplot(y ~ x, data = Mydata14, 
        outline = FALSE,size=2.0,cex.axis=2.0,lwd = 2, boxlwd = 3,font=2, frame.plot=FALSE, ylim=c(10,32),ann=FALSE)
beeswarm(y ~ x, data = Mydata14, 
         col = rainbow(9), pch = 16, add = TRUE, method= 'swarm', cex=2,frame.plot=FALSE,lwd=3)

title(xlab="Number of released antigens by each apoptotic beta cell",ylab="Weeks",cex.lab=2,font.lab = 2, mgp=c(4,1,0))

#dev.off()

dev.off()
