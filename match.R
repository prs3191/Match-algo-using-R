library(stringdist)
library(gdata)
library(xlsx)

all<-read.csv(file="zipall.csv",head=TRUE,sep=",") ####give full path#####
tomap<-read.xlsx(file="tomap.xlsx",1,header=TRUE)
uniqzip<-read.xlsx("uniqzip.xlsx",1,header=TRUE)


rows=nrow(uniqzip)
for(i in 1:rows)
{
  zipall=all[grep(uniqzip[i,1],all$zip),] ####all available IDs in all possible zip codes #####

  ziptomap=tomap[grep(uniqzip[i,1],tomap$zip),] ####all zips for which you want to find original ID#####
  ziptomap$x=row.names(ziptomap)

  ####find phonetic codes based on name for which you want to find original ID#####
  ziptomap$code=phonetic(ziptomap$customer, method = c("soundex"), useBytes = TRUE)
  
  ####calculate distance between existing phonetic code and above found phonetic code#####
  ziptomap$can=zipall[amatch(ziptomap$customer,zipall$customer, maxDist=Inf,matchNA=FALSE,method="soundex"),1] 

  tomap[ziptomap$x,3]=ziptomap$can
  tomap[ziptomap$x,4]=ziptomap$code
}
####check#####
tomap[ziptomap$x,]
