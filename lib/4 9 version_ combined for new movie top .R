
setwd("~/Downloads/project4-team-4-master/lib")
load("movieNew.RData")##only have the movie data named "movie.data"

t=movie.data$time
t=sort(t)
#t.new=t-t[1]
#head(t.new)
time=1:15
for(i in 1:15){
  time[i]=i*3600*24*365
}
library(plyr)
library(dplyr)
movie.data$timeN=movie.data$time-t[1]
movie.data$timeN2 <- ifelse (movie.data$timeN < time[1], "1",
                             ifelse (movie.data$timeN >= time[1] & movie.data$timeN< time[2], "2",
                                     ifelse (movie.data$timeN >= time[2] & movie.data$timeN < time[3], "3",
                                             ifelse (movie.data$timeN >= time[3] & movie.data$timeN < time[4], "4",
                                                     ifelse (movie.data$timeN >= time[4] & movie.data$timeN < time[5], "5",
                                                             ifelse (movie.data$timeN >= time[5] & movie.data$timeN < time[6], "6",
                                                                     ifelse (movie.data$timeN >= time[6] & movie.data$timeN < time[7], "7",
                                                                             ifelse (movie.data$timeN >= time[7] & movie.data$timeN < time[8], "8",
                                                                                     ifelse (movie.data$timeN >= time[8] & movie.data$timeN < time[9], "9",
                                                                                             ifelse (movie.data$timeN >= time[9] & movie.data$timeN < time[10], "10",
                                                                                                     ifelse (movie.data$timeN >= time[10] & movie.data$timeN < time[11], "11",
                                                                                                             ifelse (movie.data$timeN >= time[11] & movie.data$timeN < time[12], "12",
                                                                                                                     ifelse (movie.data$timeN >= time[12] & movie.data$timeN < time[13], "13",
                                                                                                                             ifelse (movie.data$timeN >= time[13] & movie.data$timeN < time[14], "14",
                                                                                                                                     ifelse (movie.data$timeN >= time[14] & movie.data$timeN < time[15], "15",
                                                                                                                                             
                                                                                                                                             ifelse (movie.data$timeN >= time[15], "over 15",NA))))))))))))))))


#library(dplyr)

names(movie.data)
movie.data.ID.product=select(movie.data,productID,timeN,timeN2)
movie.no.na=na.omit(movie.data.ID.product)


count.movie1 <- movie.no.na %>%
  filter(timeN2=="1")%>%
  group_by(productID) %>% 
  summarise(count=n())
dim(count.movie1)

count.movie1=arrange(count.movie1,-count)[1:10,]
count.movie1
##
source("convertTitleGenres.R")

#install.packages("pbapply")

count.movie2 <- movie.no.na %>%
  filter(timeN2=="2")%>%
  group_by(productID) %>% 
  summarise(count=n())
dim(count.movie2)
count.movie2=arrange(count.movie2,-count)[1:2000,]
count.movie2=ddply(count.movie2,.(count),head,n=1)
count.movie2=arrange(count.movie2,-count)[1:10,]
count.movie2

###################
###################
###################
###################
###################
###################
###################
################### 之后可以取得10部电影
count.movie3 <- movie.no.na %>%
  filter(timeN2=="3")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie3=arrange(count.movie3,-count)[1:200,]
count.movie3=ddply(count.movie3,.(count),head,n=1)
count.movie3=arrange(count.movie3,-count)[1:10,]
count.movie3

##

count.movie4 <- movie.no.na %>%
  filter(timeN2=="4")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie4=arrange(count.movie4,-count)[1:200,]
count.movie4=ddply(count.movie4,.(count),head,n=1)
count.movie4=arrange(count.movie4,-count)[1:10,]

count.movie4

##


count.movie5 <- movie.no.na %>%
  filter(timeN2=="5")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie5=arrange(count.movie5,-count)[1:200,]
count.movie5=ddply(count.movie5,.(count),head,n=1)
count.movie5=arrange(count.movie5,-count)[1:10,];count.movie5

############
count.movie6 <- movie.no.na %>%
  filter(timeN2=="6")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie6=arrange(count.movie6,-count)[1:600,]
count.movie6=ddply(count.movie6,.(count),head,n=1)
count.movie6=arrange(count.movie6,-count)[1:10,];count.movie6

############
count.movie7 <- movie.no.na %>%
  filter(timeN2=="7")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie7=arrange(count.movie7,-count)[1:100,]
count.movie7=ddply(count.movie7,.(count),head,n=1)
count.movie7=arrange(count.movie7,-count)[1:10,];count.movie7

############
count.movie8 <- movie.no.na %>%
  filter(timeN2=="8")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie8=arrange(count.movie8,-count)[1:100,]
count.movie8=ddply(count.movie8,.(count),head,n=1)
count.movie8=arrange(count.movie8,-count)[1:10,];count.movie8

############
count.movie9 <- movie.no.na %>%
  filter(timeN2=="9")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie9=arrange(count.movie9,-count)[1:100,]
count.movie9=ddply(count.movie9,.(count),head,n=1)
count.movie9=arrange(count.movie9,-count)[1:10,];count.movie9

############
count.movie10 <- movie.no.na %>%
  filter(timeN2=="10")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie10=arrange(count.movie10,-count)[1:100,]
count.movie10=ddply(count.movie10,.(count),head,n=1)
count.movie10=arrange(count.movie10,-count)[1:10,];count.movie10

############
count.movie11 <- movie.no.na %>%
  filter(timeN2=="11")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie11=arrange(count.movie11,-count)[1:100,]
count.movie11=ddply(count.movie11,.(count),head,n=1)
count.movie11=arrange(count.movie11,-count)[1:10,];count.movie11
##2007


############
count.movie12 <- movie.no.na %>%
  filter(timeN2=="12")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie12=arrange(count.movie12,-count)[1:100,]
count.movie12=ddply(count.movie12,.(count),head,n=1)
count.movie12=arrange(count.movie12,-count)[1:10,];count.movie12

############
count.movie13 <- movie.no.na %>%
  filter(timeN2=="13")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie13=arrange(count.movie13,-count)[1:100,]
count.movie13=ddply(count.movie13,.(count),head,n=1)
count.movie13=arrange(count.movie13,-count)[1:10,];count.movie13

############
count.movie14 <- movie.no.na %>%
  filter(timeN2=="14")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie14=arrange(count.movie14,-count)[1:140,]
count.movie14=ddply(count.movie14,.(count),head,n=1)
count.movie14=arrange(count.movie14,-count)[1:10,];count.movie14
############
count.movie15 <- movie.no.na %>%
  filter(timeN2=="15")%>%
  group_by(productID) %>% 
  summarise(count=n())

count.movie15=arrange(count.movie15,-count)[1:140,]
count.movie15=ddply(count.movie15,.(count),head,n=1)
count.movie15=arrange(count.movie15,-count)[1:10,];count.movie15


#####################

#convertTitleGenre("B004A8ZWVK")

#dim(count.movie1)
total.count=cbind(count.movie1,count.movie2,count.movie3,count.movie4,count.movie5
                  ,count.movie6,count.movie7,count.movie8,count.movie9
                  ,count.movie10,count.movie11,count.movie12,count.movie13
                  ,count.movie14,count.movie15)
m=1:15
for(i in 1:15){
  m[i]=max(total.count[,2*i])
}
m
#max(total.count[,4])
# LOAD GGPLOT2 GRAPHICS PACKAGE
library(ggplot2)

# READ IN DATA
year <- c("1997","1998","1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011")
co2_emission_per_cap_qt <- m

# COMBINE DATA INTO DATAFRAME
df.china_co2 <- data.frame(year,co2_emission_per_cap_qt)

# PLOT WITH GGPLOT2 PACKAGE
ggplot(data=df.china_co2, aes(x=year, y=co2_emission_per_cap_qt,group=1)) +
  geom_line(color="#aa0022", size=1.75) +
  geom_point(color="#aa0022", size=3.5) +
  #scale_x_discrete(breaks=c("1995","2000","2005","2010")) +
  ggtitle("Top review counts") +
  labs(x="Year", y="") +
  theme(axis.title.y = element_text(size=14, family="Trebuchet MS", color="#666666")) +
  theme(axis.text = element_text(size=16, family="Trebuchet MS")) +
  theme(plot.title = element_text(size=26, family="Trebuchet MS", face="bold", hjust=0, color="#666666"))
#################

convertTitleGenre("078062551X")
convertTitleGenre("B00003CWPQ")
convertTitleGenre("B00003CXR3")##movie4
convertTitleGenre("B00003CXZ3")
convertTitleGenre("B00006FMUW")
convertTitleGenre("B0001BKAEY")
convertTitleGenre("B0009PW4D2")
convertTitleGenre("B00005JOFQ")
convertTitleGenre("B000M341QE")
convertTitleGenre("B000S6LS66")
convertTitleGenre("B00005JPS8")
convertTitleGenre("B004UFEJVW")
convertTitleGenre("B001UV4XI8")
convertTitleGenre("B00466HN7M")


## in year 14, the hot movie is HArry Potter

######
moview.m=matrix(NA, ncol=1,nrow=15)
moview.m[1,1]=convertTitleGenre("078062999X")$Title
moview.m[2,1]=convertTitleGenre("078062551X")$Title
moview.m[3,1]=convertTitleGenre("B00003CWPQ")$Title
moview.m[4,1]=convertTitleGenre("B00003CXR3")$Title
moview.m[5,1]=convertTitleGenre("B00003CXZ3")$Title
moview.m[6,1]=convertTitleGenre("B00006FMUW")$Title
moview.m[7,1]=convertTitleGenre("B0001BKAEY")$Title
moview.m[8,1]=convertTitleGenre("B0009PW4D2")$Title

moview.m[9,1]=convertTitleGenre("B00005JOFQ")$Title

moview.m[10,1]=convertTitleGenre("B000M341QE")$Title

moview.m[11,1]=convertTitleGenre("B000S6LS66")$Title
moview.m[12,1]=convertTitleGenre("B00005JPS8")$Title
moview.m[13,1]=convertTitleGenre("B004UFEJVW")$Title
moview.m[14,1]=convertTitleGenre("B001UV4XI8")$Title

moview.m[15,1]=convertTitleGenre("B00466HN7M")$Title
moview.m
