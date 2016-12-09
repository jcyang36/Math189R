install.packages(AnomalyDetection);
library(zoo);
library(AnomalyDetection);
require(AnomalyDetection);

# nam is name of data file
fil=paste(nam,collapse="");
d<-read.csv(fil,header=TRUE);
l=d[,2][2:length(d)]/d[,2][1:length(d)-1]-1;
l<-as.numeric(as.character(l));
l=na.approx(l,na.rm=FALSE);
res=AnomalyDetectionVec(l,max_anoms=0.05,direction='both',plot=TRUE,period=5);
res$plot


