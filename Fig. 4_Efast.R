

df1<-data.frame(Parameter=c("P1", "P2", "P3", "P4", "P5"),
                firstorder=c(0.666496198, 0.008250013, 0.00799589, 0.012210192, 0.011206924),
                totalorder=c(0.96200203,0.20317708, 0.20647151,0.23169107,0.21648469), 
                sd1=c(0.027222494,0.004074421,0.004010313,0.005191917,0.008101732),
                sd2=c(0.014339139,0.039087456,0.030153793,0.03209025,0.028972021))

df2<-data.frame(Parameter=rep(c('P1', "P2", "P3", "P4", "P5"), 10),
                firstorder=c(0.661684566,0.006287221,0.010998491,0.00424198,0.003543989,
                             0.676939497,0.004135768,0.001180106,0.010934697,0.006922838,
                             0.67272774,0.0077806,0.014377277,0.006122739,0.008856654,
                             0.694470702,0.016690741,0.008987883,0.012750447,0.00679275,
                             0.639258488,0.007574341,0.003222801,0.014239004,0.027795303,
                             0.723259629,0.002460098,0.006054616,0.016335581,0.010393201,
                             0.65498137,0.008331481,0.007915492,0.019140074,0.012603904,
                             0.648485928,0.013054192,0.009570458,0.017136029,0.008638292,
                             0.662411659,0.0079403,0.011754398,0.00604367,0.003365844,
                             0.630742402,0.008245386,0.005897377,0.015157694,0.023156462))

df3<-data.frame(Parameter=rep(c("P1", "P2", "P3", "P4", "P5"), 10),
                totalorder=c(0.9639026,0.2024008,0.2014104,0.2522748,0.2341837,
                             0.9578455,0.1334219,0.2056043,0.2719764,0.2192701,
                             0.9754713,0.1753609,0.1626481,0.2138902,0.2136167,
                             0.9813324,0.250719,0.261941,0.2078517,0.1620247,
                             0.970863,0.2199376,0.178921,0.2023684,0.2339759,
                             0.9741954,0.2677117,0.1807157,0.2779455,0.2534112,
                             0.9605257,0.1801374,0.2420636,0.2627749,0.1825685,
                             0.9337329,0.1875849,0.1943129,0.190197,0.1932838,
                             0.9529783,0.2245309,0.2146258,0.2314151,0.2285311,
                             0.9491732,0.1899657,0.2224723,0.2062167,0.2439812))


df4<-data.frame(Parameter=c("P1", "P2", "P3", "P4", "P5"),
                firstorder=c(0.097458909, 0.102839334, 0.072150574, 0.084823306, 0.07093064),
                totalorder=c(0.84370897,0.80015774, 0.74810974,0.69092679,0.63985001), 
                sd1=c(0.06142104,0.048603828,0.025958523,0.041919694,0.045440507),
                sd2=c(0.037282539,0.036452723,0.086869795,0.063081834,0.076998399))

df5<-data.frame(Parameter=rep(c("P1", "P2", "P3", "P4", "P5"), 10),
                firstorder=c(0.16814841,0.096373,0.07541377,0.10289537,0.13739842,
                             0.03979427,0.0805212,0.05621552,0.0280167,0.07390083,
                             0.22073127,0.08751459,0.09210532,0.12009347,0.0312669,
                             0.02298849,0.11832426,0.09010926,0.1357634,0.11197973,
                             0.06271215,0.22343654,0.10661139,0.05324852,0.05445796,
                             0.07824968,0.04114005,0.06981161,0.02272827,0.04910544,
                             0.07785173,0.07705477,0.01543692,0.06933435,0.03384253,
                             0.14362493,0.10411904,0.05485493,0.06985825,0.14737377,
                             0.07014489,0.12458051,0.09124812,0.11396066,0.04818815,
                             0.09034327,0.07532938,0.0696989,0.13233407,0.02179267))

df6<-data.frame(Parameter=rep(c("P1", "P2", "P3", "P4", "P5"), 10),
                totalorder=c(0.8612096,0.7703628,0.8560495,0.7229905,0.7409201,
                             0.8318547,0.835649,0.6222219,0.6929401,0.567728,
                             0.9012073,0.8331348,0.7844938,0.7238862,0.6573856,
                             0.8031868,0.7901612,0.629908,0.7561608,0.6261088,
                             0.7845515,0.8017823,0.7625611,0.7073276,0.6101365,
                             0.8610598,0.8014984,0.8551075,0.6787679,0.6677486,
                             0.818834,0.7911866,0.6968753,0.7462048,0.5747947,
                             0.8932082,0.7736502,0.6956162,0.5809123,0.7889584,
                             0.8517266,0.864644,0.8377093,0.5775109,0.5455581,
                             0.8302512,0.7395081,0.7405548,0.7225668,0.6191613))

library(ggplot2)
theme_set(theme_classic())

# Stacked barplot with multiple groups

p1<- ggplot(data = df1, aes(x = Parameter, y = firstorder)) + 
  geom_bar(aes(fill="first order"),stat = "identity", fill = "red",alpha=0.7,size=3)+
  geom_bar(data = df1, aes(x = Parameter, y = totalorder, fill="total order"),
           stat = "identity", fill = "grey", alpha = 0.5,size=3)+
  geom_errorbar(aes(ymin=firstorder-sd1, ymax=firstorder+sd1), width=.3,size = 1)+
  geom_errorbar(aes(ymin=totalorder-sd2, ymax=totalorder+sd2), width=.3,size = 1)+
  geom_point(data=df2,aes(x=Parameter,y=firstorder),size = 2,position = "jitter")+
  geom_jitter()+
  geom_point(data=df3,aes(x=Parameter,y=totalorder),size = 2,position = "jitter")+
  geom_jitter()+
  theme(text=element_text(size=20, face="bold"))+
  labs(x="Parameters",y="eFAST sensitivity")+
  scale_x_discrete(labels=c(expression(P[1]), expression(P[2]), expression(P[3]),expression(P[4]),expression(P[5])))
 p1 
#ggsave(file="Efast_full.tiff",dpi=600,path="D:/Projects/T1D/Figures")
# Remove colour="grey" in geom_bar to avoid the boundary

p2<-ggplot(data = df4, aes(x = Parameter, y = firstorder)) + 
  geom_bar(aes(fill="first order"),stat = "identity", fill = "red",alpha=0.7,size=3)+
  geom_bar(data = df4, aes(x = Parameter, y = totalorder, fill="total order"),
           stat = "identity", fill = "grey",alpha = 0.5,size=3)+
  geom_errorbar(aes(ymin=firstorder-sd1, ymax=firstorder+sd1), width=.3,size = 1)+
  geom_errorbar(aes(ymin=totalorder-sd2, ymax=totalorder+sd2), width=.3,size = 1)+
  geom_point(data=df5,aes(x=Parameter,y=firstorder),size = 2,position = "jitter")+
  geom_jitter()+
  geom_point(data=df6,aes(x=Parameter,y=totalorder),size = 2,position = "jitter")+
  geom_jitter()+
  theme(text=element_text(size=20, face="bold",color = 'black'))+
  labs(x="Parameters",y="eFAST sensitivity")+
  scale_y_continuous(limit = c(0,1))

#axis.text.x=element_text(face ='bold',color='black',size = 25),axis.text.y=element_text(face ='bold',color='black',size = 25),

p2<-p2+scale_x_discrete(labels=c(expression(P[1]), expression(P[2]), expression(P[3]),expression(P[4]),expression(P[5])))
p2
#ggsave(file="Efast_Without.tiff",dpi=600,path="D:/Projects/T1D/Figures")


